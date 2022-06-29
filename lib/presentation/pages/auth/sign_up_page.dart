import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:oxo/application/sign_in/sign_in_bloc.dart';
import 'package:oxo/domain/common/resend_code.dart';
import 'package:oxo/infrastructure/models/auth/auth.dart';
import 'package:oxo/presentation/component/custom_button.dart';
import 'package:oxo/presentation/component/custom_text_field.dart';
import 'package:oxo/presentation/component/custom_text_field_password.dart';
import 'package:oxo/presentation/component/loading.dart';
import 'package:oxo/presentation/routes/routes.dart';
import 'package:oxo/presentation/styles/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:oxo/infrastructure/models/auth/auth.dart' as models;

class SignUp extends StatefulWidget {
  final String phoneNumber;

  const SignUp({Key? key, required this.phoneNumber}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late TextEditingController usernameController;
  late TextEditingController locationController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;
  final _formKey = GlobalKey<FormState>();
  File? img;

  bool confirmed = true;
  bool dateSelected = true;

  DateTime? datePicked;

  @override
  void initState() {
    super.initState();
    usernameController = TextEditingController();
    locationController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    usernameController.dispose();
    locationController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (context, colors, fonts, icons, controller) {
        return BlocConsumer<SignInBloc, SignInState>(
          listenWhen: (prev, next) =>
              (prev.navigateToHome != next.navigateToHome &&
                  next.navigateToHome),
          listener: (context, state) {
            if (state.navigateToHome) {
              Navigator.push(
                  context,
                  Routes.getSuccessPage(
                    context,
                  ));
            }
          },
          builder: (context, state) {
            return state.isLoading
                ? const Loading()
                : GestureDetector(
                    onTap: () => FocusScope.of(context).unfocus(),
                    child: WillPopScope(
                      onWillPop: () {
                        Navigator.pushReplacementNamed(
                          context,
                          Routes.signInPage,
                        );
                        return Future.value(true);
                      },
                      child: Scaffold(
                        resizeToAvoidBottomInset: true,
                        backgroundColor: colors.backgroundColor,
                        bottomNavigationBar: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: CustomButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Location location = Location((l) => l
                                  ..lat = 21.2
                                  ..long = 21.2);

                                final signUp = models.SignUp((s) => s
                                  ..name = usernameController.text
                                  ..phone = widget.phoneNumber
                                      .replaceAll(" ", "")
                                  ..locationName =
                                      locationController.text
                                  ..password = passwordController.text
                                  ..location = location.toBuilder()
                                  ..type = "user"
                                  ..profileImage = ""
                                  ..fcmToken = "");
                                context.read<SignInBloc>().add(
                                    SignInEvent.signUp(
                                        login: signUp));
                              }
                            },
                            title: 'sign_up'.tr(),
                          ),
                        ),
                        appBar: AppBar(
                          backgroundColor: colors.backgroundColorVariant,
                          iconTheme: IconThemeData(color: colors.icon),
                          title: Text(
                            "Profilni tahrirlash",
                            style: fonts.bodyText1
                                .copyWith(fontSize: 20.sp, color: Style.black),
                          ),
                          centerTitle: true,
                          elevation: 0.5,
                          shadowColor: colors.stoke,
                        ),
                        body: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          child: Form(
                            key: _formKey,
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  SizedBox(height: 16.h),
                                  DottedBorder(
                                    borderType: BorderType.Oval,
                                    color: Style.black,
                                    strokeWidth: 2,
                                    dashPattern: const [
                                      10,
                                      5,
                                      10,
                                      5,
                                      10,
                                      5
                                    ],
                                    child: GestureDetector(
                                      onTap: () {
                                        buildPickImage(context, fonts);
                                      },
                                      behavior: HitTestBehavior.opaque,
                                      child: img == null
                                          ? Container(
                                              width: 68.h,
                                              height: 68.h,
                                              decoration: BoxDecoration(
                                                  color: Style.transparent,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          34.r)),
                                              child: Center(
                                                child: SvgPicture.asset(
                                                    "assets/svgs/addCamera.svg"),
                                              ))
                                          : ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      34.r),
                                              child: Image.file(
                                                img!,
                                                width: 68.h,
                                                height: 68.h,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                    ),
                                  ),
                                  SizedBox(height: 16.h),
                                  Text(
                                    "Surat yuklash",
                                    style: fonts.subtitle1
                                        .copyWith(color: colors.text),
                                  ),
                                  SizedBox(height: 32.h),
                                  CustomTextField(
                                    validator: (s) {
                                      if (s!.isEmpty) {
                                        return 'your_username_is_exists'
                                            .tr();
                                      }
                                      return null;
                                    },
                                    controller: usernameController,
                                    title: 'username'.tr(),
                                    hintText: 'James',
                                    error: state.isUsernameExists
                                        ? 'your_username_is_exists'.tr()
                                        : null,
                                  ),
                                  SizedBox(height: 16.h),
                                  CustomTextField(
                                    validator: (s) {
                                      if (s!.isEmpty) {
                                        return 'Joylashgan joyizni kiriting';
                                      }
                                      return null;
                                    },
                                    controller: locationController,
                                    title: 'Joylashuv',
                                    hintText: 'Toshkent',
                                    isEmail: true,
                                    error: state.isEmailExists
                                        ? 'Joylashgan joyizni kiriting'
                                        : null,
                                  ),
                                  SizedBox(height: 16.h),
                                  CustomTextFieldPassword(
                                    validator: (s) {
                                      if (s!.isEmpty ||
                                          RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                              .hasMatch(s) ||
                                          s.length < 8) {
                                        return 'enter_valid_password'.tr();
                                      }
                                      return null;
                                    },
                                    controller: passwordController,
                                    title: 'new_password'.tr(),
                                    hintText: '*********',
                                    isPassword: true,
                                    error: state.isPasswordValid
                                        ? null
                                        : 'enter_valid_password'.tr(),
                                  ),
                                  SizedBox(height: 16.h),
                                  CustomTextFieldPassword(
                                    validator: (s) {
                                      if (s!.isEmpty ||
                                          s != passwordController.text) {
                                        return 'not_match'.tr();
                                      }
                                      return null;
                                    },
                                    controller: confirmPasswordController,
                                    title: 'confirm_password'.tr(),
                                    hintText: '*********',
                                    isPassword: true,
                                    error:
                                        confirmed ? null : 'not_match'.tr(),
                                  ),
                                  SizedBox(height: 16.h),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
          },
        );
      },
    );
  }

  Future buildPickImage(BuildContext context, dynamic fonts) async {
    return showGeneralDialog(
      barrierDismissible: true,
      barrierLabel: '',
      barrierColor: Colors.black38,
      transitionDuration: const Duration(milliseconds: 300),
      transitionBuilder: (context, anim1, anim2, child) {
        return SlideTransition(
          position: Tween(begin: const Offset(0, 1), end: const Offset(0, 0))
              .animate(anim1),
          child: child,
        );
      },
      context: context,
      pageBuilder: (_, anim1, anim2) {
        return Dialog(
          shape: const BeveledRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(7),
            ),
          ),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            child: SizedBox(
              height: 175,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        "Profilga rasm yuklash",
                        style: fonts.subtitle1.copyWith(color: Style.text),
                      ),
                    ),
                  ),
                  const Divider(
                    color: Colors.black,
                    height: 3,
                  ),
                  Expanded(
                    child: InkWell(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Center(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Kamerani yoqish",
                              style:
                                  fonts.subtitle1.copyWith(color: Style.text),
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        _imgFromCamera();
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Center(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Tanlash",
                              style:
                                  fonts.subtitle1.copyWith(color: Style.text),
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  _imgFromCamera() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(
      source: ImageSource.camera,
      imageQuality: 50,
    );

    File _image;
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
        img = _image;
      });
      context
          .read<SignInBloc>()
          .add(SignInEvent.uploadProfile(path: img!.path));
    }
  }

  _imgFromGallery() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 50,
    );

    File _image;
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
        img = _image;
      });
    }
  }
}

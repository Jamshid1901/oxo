import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oxo/application/sign_in/sign_in_bloc.dart';
import 'package:oxo/domain/common/resend_code.dart';
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
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late TextEditingController usernameController;
  late TextEditingController locationController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;
  final _formKey = GlobalKey<FormState>();

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
              (prev.proceedToVerifyCode != next.proceedToVerifyCode &&
                  next.proceedToVerifyCode),
          listener: (context, state) {
            if (state.proceedToVerifyCode) {
              Navigator.push(
                  context,
                  Routes.verifyCode(
                    context,
                    locationController.text.trim(),
                    ResendCodeType.registering,
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
                        Navigator.pop(context);
                        Navigator.pop(context);
                        return Future.value(true);
                      },
                      child: Scaffold(
                        backgroundColor: colors.backgroundColor,
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
                        body: SingleChildScrollView(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            child: Form(
                              key: _formKey,
                              child: Column(
                                children: [
                                  SizedBox(height: 16.h),
                                  CustomTextField(
                                    validator: (s) {
                                      if (s!.isEmpty) {
                                        return 'your_username_is_exists'.tr();
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
                                          s.length > 8) {
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
                                    error: confirmed ? null : 'not_match'.tr(),
                                  ),
                                  SizedBox(height: 30.h),
                                  CustomButton(
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        final email =
                                            locationController.text.trim();
                                        final username =
                                            usernameController.text.trim();
                                        final password =
                                            passwordController.text.trim();

                                        final signUp = models.SignUp(
                                          (s) => s
                                            ..username = username
                                            ..email = email
                                            ..birthday = password
                                            ..password = password,
                                        );
                                        context.read<SignInBloc>().add(
                                            SignInEvent.signUp(login: signUp));
                                      }
                                    },
                                    title: 'sign_up'.tr(),
                                  ),
                                  SizedBox(height: 15.h),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'have_an_account'.tr(),
                                        style: fonts.subtitle1,
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text(
                                          'login_here'.tr(),
                                          style: Style.medium14(
                                            size: 14.sp,
                                            color: Style.primary,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
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
}

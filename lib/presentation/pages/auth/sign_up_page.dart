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
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;

  bool confirmed = true;
  bool dateSelected = true;

  DateTime? datePicked;

  @override
  void initState() {
    super.initState();
    usernameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
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
                    emailController.text.trim(),
                    ResendCodeType.registering,
                  ));
            }
          },
          builder: (context, state) {
            return state.isLoading
                ? const Loading()
                : GestureDetector(
                    onTap: () => FocusScope.of(context).unfocus(),
                    child: Scaffold(
                      backgroundColor: colors.backgroundColor,
                      body: ListView(
                        padding: EdgeInsets.zero,
                        children: [
                          Image.asset(controller.isDark
                              ? icons.signUpDark
                              : icons.signUpLight),
                          ListView(
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            children: [
                              CustomTextField(
                                controller: usernameController,
                                title: 'username'.tr(),
                                hintText: 'create_gamertag_of_user'.tr(),
                                error: state.isUsernameExists
                                    ? 'your_username_is_exists'.tr()
                                    : null,
                              ),
                              SizedBox(height: 16.h),
                              CustomTextField(
                                controller: emailController,
                                title: 'email'.tr(),
                                hintText: 'enter_your_email'.tr(),
                                isEmail: true,
                                error: state.isEmailExists
                                    ? 'your_email_is_exists'.tr()
                                    : state.isPasswordValid
                                        ? null
                                        : 'enter_valid_password'.tr(),
                              ),
                              SizedBox(height: 16.h),
                              Text('date_of_birth'.tr(),
                                  style: fonts.subtitle1),
                              SizedBox(height: 14.h),
                              GestureDetector(
                                onTap: () async {
                                  // DatePicker.showDatePicker(
                                  //   context,
                                  //   theme: DatePickerTheme(
                                  //       backgroundColor:
                                  //           colors.backgroundColorVariant,
                                  //       cancelStyle: fonts.bodyText2.copyWith(
                                  //         color: colors.text,
                                  //       ),
                                  //       doneStyle: fonts.bodyText2.copyWith(
                                  //         color: colors.text,
                                  //       ),
                                  //       itemStyle: fonts.bodyText2.copyWith(
                                  //         color: colors.text,
                                  //       )),
                                  //   showTitleActions: true,
                                  //   minTime: DateTime(1900),
                                  //   maxTime: DateTime.now(),
                                  //   onChanged: (date) {
                                  //
                                  //   },
                                  //   onConfirm: (date) {
                                  //     setState(() {
                                  //       datePicked=date;
                                  //     });
                                  //   },
                                  //   currentTime: datePicked ?? DateTime.now(),
                                  // );


                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 50.h,
                                      width: double.infinity,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16.w),
                                      decoration: BoxDecoration(
                                        color: Style.transparent,
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                        border: Border.all(color: colors.stoke),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                              datePicked != null
                                                  ? '${datePicked!.year}-${datePicked!.month}-${datePicked!.day}'
                                                  : 'MM/DD/YYYY',
                                              style: fonts.bodyText1),
                                          SvgPicture.asset(icons.dropDown),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 10.h, left: 14.w),
                                      child: Visibility(
                                        visible: !dateSelected,
                                        child: Text(
                                          'required_field'.tr(),
                                          style: fonts.caption
                                              .copyWith(color: colors.negative),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 16.h),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 34.h),
                                child: SvgPicture.asset(icons.liner),
                              ),
                              CustomTextFieldPassword(
                                controller: passwordController,
                                title: 'password'.tr(),
                                hintText: 'enter_password'.tr(),
                                isPassword: true,
                                error: state.isPasswordValid
                                    ? null
                                    : 'enter_valid_password'.tr(),
                              ),
                              SizedBox(height: 16.h),
                              CustomTextFieldPassword(
                                controller: confirmPasswordController,
                                title: 'confirm_password'.tr(),
                                hintText: 'confirm_password'.tr(),
                                isPassword: true,
                                error: confirmed ? null : 'not_match'.tr(),
                              ),
                              SizedBox(height: 30.h),
                              CustomButton(
                                onPressed: () {
                                  // Navigator.push(
                                  //     context,
                                  //     Routes.verifyCode(
                                  //       context,
                                  //       '',
                                  //       ResendCodeType.registering,
                                  //     ));
                                  final email = emailController.text.trim();
                                  final username =
                                      usernameController.text.trim();
                                  final password =
                                      passwordController.text.trim();
                                  final confirmPassword =
                                      confirmPasswordController.text.trim();
                                  if (datePicked == null) {
                                    setState(() {
                                      dateSelected = false;
                                    });

                                    return;
                                  }
                                  if (password != confirmPassword) {
                                    setState(() {
                                      confirmed = false;
                                    });
                                    return;
                                  }
                                  confirmed = true;
                                  dateSelected = true;

                                  final birthday =
                                      '${datePicked!.year}-${datePicked!.month}-${datePicked!.day}';

                                  final signUp = models.SignUp(
                                    (s) => s
                                      ..username = username
                                      ..email = email
                                      ..birthday = birthday
                                      ..password = password,
                                  );
                                  context
                                      .read<SignInBloc>()
                                      .add(SignInEvent.signUp(login: signUp));
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
                          const SizedBox(height: 40,)
                        ],
                      ),
                    ),
                  );
          },
        );
      },
    );
  }
}

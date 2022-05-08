import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:oxo/application/sign_in/sign_in_bloc.dart';
import 'package:oxo/domain/sign_in/social_sign_in_types.dart';
import 'package:oxo/infrastructure/models/auth/auth.dart';
import 'package:oxo/presentation/component/custom_button.dart';
import 'package:oxo/presentation/component/custom_text_field.dart';
import 'package:oxo/presentation/component/custom_text_field_password.dart';
import 'package:oxo/presentation/component/error_dialog.dart';
import 'package:oxo/presentation/component/loading.dart';
import 'package:oxo/presentation/routes/routes.dart';
import 'package:oxo/presentation/styles/style.dart';
import 'package:oxo/presentation/styles/theme.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (context, colors, fonts, icons, controller) {
        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: BlocConsumer<SignInBloc, SignInState>(
            listenWhen: (prev, next) =>
                (prev.proceedToChooseInterests !=
                        next.proceedToChooseInterests &&
                    next.proceedToChooseInterests) ||
                (prev.navigateToHome != next.navigateToHome &&
                    next.navigateToHome) ||
                (prev.exception != next.exception && next.exception.isNotEmpty),
            listener: (context, state) {
              if (state.proceedToChooseInterests) {
                Navigator.push(
                  context,
                  Routes.chooseInterests(context),
                );
              }
              if (state.navigateToHome) {
                Navigator.push(
                  context,
                  Routes.getMainRoute(context),
                );
              }

              if (state.exception.isNotEmpty) {
                OxoError.openDialog(
                  context,
                  title: state.exception,
                  description: 'correct_credentials'.tr(),
                  buttonTitle: 'close'.tr(),
                );
              }
            },
            builder: (context, state) {
              return state.isLoading
                  ? const Loading()
                  : Scaffold(
                      backgroundColor: colors.backgroundColor,
                      body: Stack(
                        children: [
                          Positioned(
                            top: 0,
                            right: 0,
                            left: 0,
                            child: Image.asset(icons.authFacadeImage),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            left: 0,
                            bottom: 0,
                            child: ListView(
                              padding: EdgeInsets.symmetric(horizontal: 16.w),
                              children: [
                                SizedBox(height: 155.h),
                                Image.asset(
                                  controller.isDark
                                      ? icons.logoDarkImage
                                      : icons.logoLightImage,
                                  height: 45.h,
                                  width: 100.w,
                                ),
                                SizedBox(height: 24.h),
                                Text(
                                  'login'.tr(),
                                  textAlign: TextAlign.center,
                                  style: fonts.headline3,
                                ),
                                SizedBox(height: 40.h),
                                CustomTextField(
                                  controller: emailController,
                                  title: 'email'.tr(),
                                  hintText: 'enter_your_email'.tr(),
                                  isEmail: true,
                                  error: state.isEmailValid
                                      ? null
                                      : 'enter_valid_email'.tr(),
                                ),
                                SizedBox(height: 16.h),
                                CustomTextFieldPassword(
                                  controller: passwordController,
                                  title: 'password'.tr(),
                                  hintText: 'enter_password'.tr(),
                                  isPassword: true,
                                  error: state.isPasswordValid
                                      ? null
                                      : 'enter_valid_password'.tr(),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.push(context,
                                          Routes.forgotPassword(context));
                                    },
                                    child: Text(
                                      'forgot_password'.tr(),
                                      style: Style.medium14(
                                        size: 14.sp,
                                        color: Style.primary,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 30.h),
                                CustomButton(
                                  onPressed: () {
                                    final email = emailController.text.trim();
                                    final password =
                                        passwordController.text.trim();

                                    final login = Login(
                                      (l) => l
                                        ..email = email
                                        ..password = password,
                                    );
                                    context
                                        .read<SignInBloc>()
                                        .add(SignInEvent.login(login: login));
                                  },
                                  title: 'login'.tr(),
                                ),
                                SizedBox(height: 30.h),
                                _liner(),
                                SizedBox(height: 30.h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'dont_have_an_account'.tr(),
                                      style: fonts.subtitle1,
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context, Routes.signUp(context));
                                      },
                                      child: Text(
                                        'sign_up_here'.tr(),
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
                        ],
                      ),
                    );
            },
          ),
        );
      },
    );
  }


  _liner() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 1,
          width: 110.w,
          decoration: BoxDecoration(
              color: Style.stoke, borderRadius: BorderRadius.circular(2)),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(
            'or_login_with'.tr(),
            style: Style.regular12(
              size: 12.sp,
              color: Style.subText,
            ),
          ),
        ),
        Container(
          height: 1,
          width: 110.w,
          decoration: BoxDecoration(
              color: Style.stoke, borderRadius: BorderRadius.circular(2)),
        ),
      ],
    );
  }
}

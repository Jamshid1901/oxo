import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:oxo/application/sign_in/sign_in_bloc.dart';
import 'package:oxo/domain/common/resend_code.dart';
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

class _SignInState extends State<SignIn> with SingleTickerProviderStateMixin {
  late TextEditingController phoneController;
  late TextEditingController phoneControllerOne;
  late TextEditingController passwordController;
  TabController? tabController;
  final _formKeyOne = GlobalKey<FormState>();
  final _formKeySecond = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    phoneController = TextEditingController(text: "+998 ");
    phoneControllerOne = TextEditingController(text: "+998 ");
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    phoneController.dispose();
    phoneControllerOne.dispose();
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
                (prev.proceedToVerifyCode != next.proceedToVerifyCode &&
                    next.proceedToVerifyCode) ||
                (prev.navigateToHome != next.navigateToHome &&
                    next.navigateToHome) ||
                (prev.exception != next.exception && next.exception.isNotEmpty) ||
                    (prev.proceedToChooseInterests != next.proceedToChooseInterests &&
                        next.proceedToChooseInterests),
            listener: (context, state) {
              if (state.proceedToChooseInterests) {
                Navigator.push(
                  context,
                  Routes.getMainRoute(
                    context,
                  ),
                );
              }

              if (state.proceedToVerifyCode) {
                Navigator.push(
                  context,
                  Routes.verifyCode(
                    context,
                    phoneController.text,
                    ResendCodeType.registering,
                  ),
                );
              }

              if (state.exception.isNotEmpty) {
                OxoError.openDialog(
                  context,
                  title: "Xato",
                  description: state.exception,
                  buttonTitle: 'close'.tr(),
                );
              }
            },
            builder: (context, state) {
              return state.isLoading
                  ? const Loading()
                  : Scaffold(
                      backgroundColor: colors.backgroundColor,
                      body: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 90.h),
                              SvgPicture.asset(
                                "assets/svgs/oxo.svg",
                                height: 48,
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                'welcome'.tr(),
                                textAlign: TextAlign.center,
                                style: fonts.headline4
                                    .copyWith(fontSize: 24, color: Style.black),
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                'splashDescriptionOne'.tr(),
                                style: fonts.bodyText1,
                              ),
                              SizedBox(height: 30.h),
                              SizedBox(
                                width: double.infinity,
                                child: TabBar(
                                    controller: tabController,
                                    isScrollable: false,
                                    indicatorColor: Style.black,
                                    // indicator: BoxDecoration(
                                    //   borderRadius: BorderRadius.all(Radius.circular(4.r))
                                    // ),
                                    labelColor: Style.black,
                                    unselectedLabelColor: Style.subText,
                                    unselectedLabelStyle: fonts.headline4
                                        .copyWith(
                                            fontSize: 16.sp,
                                            color: Style.black),
                                    labelStyle: fonts.headline4.copyWith(
                                        fontSize: 16.sp, color: Style.black),
                                    tabs: [
                                      Tab(text: "login".tr()),
                                      Tab(text: "signUp".tr()),
                                    ]),
                              ),
                              SizedBox(height: 24.h),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height - 340.h,
                                child: TabBarView(
                                    controller: tabController,
                                    children: [
                                      Form(
                                        key: _formKeyOne,
                                        child: Column(
                                          children: [
                                            CustomTextField(
                                              validator: (ss) {
                                                if (ss!.isEmpty ||
                                                    RegExp(r'[0-9],+')
                                                        .hasMatch(ss) ||
                                                    ss.length < 17) {
                                                  return 'enter_valid_phone'
                                                      .tr();
                                                }
                                                return null;
                                              },
                                              formatter: [
                                                MaskTextInputFormatter(
                                                    mask: "+998 ## ### ## ##")
                                              ],
                                              controller: phoneControllerOne,
                                              title: 'phone'.tr(),
                                              hintText: '',
                                              isEmail: true,
                                              error: state.isEmailValid
                                                  ? null
                                                  : 'enter_valid_phone'.tr(),
                                            ),
                                            SizedBox(height: 24.h),
                                            CustomTextFieldPassword(
                                              validator: (s) {
                                                if (s!.isEmpty ||
                                                    RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                                        .hasMatch(s) ||
                                                    s.length < 8) {
                                                  return 'enter_valid_password'
                                                      .tr();
                                                }
                                                return null;
                                              },
                                              controller: passwordController,
                                              title: 'password'.tr(),
                                              hintText: '',
                                              isPassword: true,
                                              error: state.isPasswordValid
                                                  ? null
                                                  : 'enter_valid_password'.tr(),
                                            ),
                                            SizedBox(height: 54.h),
                                            CustomButton(
                                              onPressed: () {
                                                if (_formKeyOne.currentState!
                                                    .validate()) {
                                                  final login = Login(
                                                    (l) => l
                                                      ..phone =
                                                          phoneControllerOne
                                                              .text
                                                              .replaceAll(
                                                                  ' ', "")
                                                      ..fcm = ''
                                                      ..password =
                                                          passwordController
                                                              .text,
                                                  );
                                                  context
                                                      .read<SignInBloc>()
                                                      .add(SignInEvent.login(
                                                          login: login));
                                                }
                                              },
                                              title: 'login'.tr(),
                                            ),
                                            SizedBox(height: 30.h),
                                          ],
                                        ),
                                      ),
                                      Form(
                                        key: _formKeySecond,
                                        child: Column(
                                          children: [
                                            CustomTextField(
                                              formatter: [
                                                MaskTextInputFormatter(
                                                    mask: "+998 ## ### ## ##")
                                              ],
                                              controller: phoneController,
                                              title: 'phone'.tr(),
                                              hintText: '',
                                              isEmail: true,
                                              validator: (ss) {
                                                if (ss!.isEmpty ||
                                                    RegExp(r'[0-9],+')
                                                        .hasMatch(ss) ||
                                                    ss.length < 17) {
                                                  return 'enter_valid_phone'
                                                      .tr();
                                                }
                                                return null;
                                              },
                                              error: state.isEmailValid
                                                  ? null
                                                  : 'enter_valid_phone'.tr(),
                                            ),
                                            SizedBox(height: 16.h),
                                            SizedBox(height: 30.h),
                                            CustomButton(
                                              onPressed: () {
                                                if (_formKeySecond.currentState!
                                                    .validate()) {
                                                  final number = phoneController
                                                      .text
                                                      .trim();

                                                  final data = SendCode(
                                                    (l) => l
                                                      ..number = number
                                                          .replaceAll(" ", "")
                                                      ..type = "signup",
                                                  );
                                                  context
                                                      .read<SignInBloc>()
                                                      .add(SignInEvent.sendCode(
                                                          number: data));
                                                }
                                              },
                                              title: 'signUp'.tr(),
                                            ),
                                            SizedBox(height: 30.h),
                                          ],
                                        ),
                                      ),
                                    ]),
                              ),
                            ],
                          ),
                        ),
                      ));
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

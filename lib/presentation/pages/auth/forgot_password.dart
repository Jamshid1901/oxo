import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:oxo/application/sign_in/sign_in_bloc.dart';
import 'package:oxo/presentation/component/custom_button.dart';
import 'package:oxo/presentation/component/custom_text_field_password.dart';
import 'package:oxo/presentation/component/loading.dart';
import 'package:oxo/presentation/routes/routes.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (context, colors, fonts, icons, c) {
        return BlocConsumer<SignInBloc, SignInState>(
          listenWhen: (prev, next) =>
              prev.proceedToGetPassword != next.proceedToGetPassword &&
              next.proceedToGetPassword,
          listener: (context, state) {
            Navigator.push(
                context, Routes.verifyCode(context, _controller.text.trim()));
          },
          builder: (context, state) {
            return state.isLoading
                ? const Loading()
                : GestureDetector(
                    onTap: () => FocusScope.of(context).unfocus(),
                    child: Scaffold(
                      backgroundColor: colors.backgroundColor,
                      resizeToAvoidBottomInset: false,
                      appBar: AppBar(
                        backgroundColor: colors.backgroundColorVariant,
                        iconTheme: IconThemeData(color: colors.icon),
                        title: Image.asset(
                          c.isDark ? icons.logoDarkImage : icons.logoLightImage,
                          height: 24.h,
                          width: 50.w,
                        ),
                        centerTitle: true,
                        elevation: 0.5,
                        shadowColor: colors.stoke,
                      ),
                      body: Padding(
                        padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 50.h),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                SizedBox(height: 3.h),
                                Image.asset(
                                  icons.forgotPassword,
                                  height: 160.h,
                                  width: 155.w,
                                ),
                                Text(
                                  'forgot_assword'.tr(),
                                  style: fonts.headline3,
                                ),
                                SizedBox(height: 16.h),
                                Text(
                                  'enter_registration_email'.tr(),
                                  textAlign: TextAlign.center,
                                  style: fonts.bodyText2,
                                ),
                                SizedBox(height: 16.h),
                                CustomTextFieldPassword(
                                  controller: _controller,
                                  hintText: 'enter_your_email'.tr(),
                                  isEmail: true,
                                  error: state.isEmailValid
                                      ? null
                                      : 'enter_valid_email'.tr(),
                                ),
                              ],
                            ),
                            CustomButton(
                              onPressed: () {
                                // final email = f.ForgotPassword(
                                //   (f) => f.email = _controller.text.trim(),
                                // );
                                // context.read<SignInBloc>().add(
                                //     SignInEvent.forgotPassword(email: email));
                              },
                              title: 'continue'.tr(),
                            ),
                          ],
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

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oxo/application/sign_in/sign_in_bloc.dart';
import 'package:oxo/domain/common/resend_code.dart';
import 'package:oxo/infrastructure/models/auth/auth.dart';
import 'package:oxo/presentation/component/counter.dart';
import 'package:oxo/presentation/component/custom_button.dart';
import 'package:oxo/presentation/component/loading.dart';
import 'package:oxo/presentation/styles/theme.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:oxo/infrastructure/models/auth/auth.dart' as model;

import '../../routes/routes.dart';

class VerifyCode extends StatefulWidget {
  final String email;
  final ResendCodeType resendCodeType;
  const VerifyCode({
    required this.email,
    required this.resendCodeType,
    Key? key,
  }) : super(key: key);

  @override
  State<VerifyCode> createState() => _VerifyCodeState();
}

class _VerifyCodeState extends State<VerifyCode> {
  late TextEditingController _controller;
  bool canProceed = false;
  bool canSendCodeAgain = false;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _controller.addListener(_listener);
  }

  void _listener() {
    if (_controller.text.trim().length == 6) {
      setState(() {
        canProceed = true;
      });
    } else {
      setState(() {
        canProceed = false;
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  _valueVistener(bool isDisabled) {
    if (isDisabled == true) {
      setState(() {
        canSendCodeAgain = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (context, colors, fonts, icons, c) {
      return BlocConsumer<SignInBloc, SignInState>(
          listener: (context, state) {
            if (state.proceedToChangePassword) {
              Navigator.push(
                context,
                Routes.enterNewPassword(
                  context,
                  widget.email,
                  _controller.text.trim(),
                ),
              );
            }
            if (state.proceedToChooseInterests) {
              Navigator.push(
                context,
                Routes.chooseInterests(context),
              );
            }
          },
          listenWhen: (prev, next) =>
              (prev.proceedToChangePassword != next.proceedToChangePassword &&
                  next.proceedToChangePassword) ||
              (prev.proceedToChooseInterests != next.proceedToChooseInterests &&
                  next.proceedToChooseInterests),
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
                                Image.asset(
                                  icons.forgotPassword,
                                  height: 155.h,
                                  width: 165.h,
                                ),
                                SizedBox(height: 24.h),
                                Text(
                                  'password_has_been_sent'.tr(),
                                  style: fonts.headline3,
                                ),
                                SizedBox(height: 16.h),
                                Text(
                                  'verification_code_sent'
                                      .tr(args: [widget.email]),
                                  textAlign: TextAlign.center,
                                  style: fonts.bodyText2,
                                ),
                                SizedBox(height: 25.h),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 68.0.w),
                                  child: PinPut(
                                    fieldsCount: 6,
                                    textStyle: fonts.headline3,
                                    controller: _controller,
                                    eachFieldConstraints: BoxConstraints(
                                        minHeight: 40.0, minWidth: 16.0.w),
                                    submittedFieldDecoration:
                                        _pinPutDecoration(colors),
                                    selectedFieldDecoration:
                                        _pinPutDecoration(colors),
                                    followingFieldDecoration:
                                        _pinPutDecoration(colors),
                                  ),
                                ),
                                SizedBox(height: 55.h),
                                TextButton(
                                  onPressed: () {
                                    final email = ForgotPassword(
                                      (f) => f.email = widget.email.trim(),
                                    );
                                    context
                                        .read<SignInBloc>()
                                        .add(SignInEvent.resend(email: email));
                                  },
                                  child: Text(
                                    'send_again'.tr(),
                                    style: fonts.subtitle1.copyWith(
                                        color: canSendCodeAgain
                                            ? colors.text
                                            : colors.disabled),
                                  ),
                                ),
                                Counter(
                                  isDisabled: _valueVistener,
                                  style: fonts.subtitle1.copyWith(
                                    color: colors.subText,
                                  ),
                                ),
                              ],
                            ),
                            CustomButton(
                              isDisabled: !canProceed,
                              onPressed: () {
                                final body = model.VerifyCode(
                                  (v) => v
                                    ..email = widget.email
                                    ..code = _controller.text.trim(),
                                );

                                context
                                    .read<SignInBloc>()
                                    .add(SignInEvent.verifyCode(
                                      code: body,
                                      type: widget.resendCodeType,
                                    ));
                              },
                              title: 'verify'.tr(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
          });
    });
  }

  BoxDecoration _pinPutDecoration(CustomColorSet colors) {
    return BoxDecoration(
      border: Border(
        bottom: BorderSide(color: colors.text),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oxo/application/sign_in/sign_in_bloc.dart';
import 'package:oxo/domain/common/resend_code.dart';
import 'package:oxo/infrastructure/models/auth/auth.dart';
import 'package:oxo/presentation/component/counter.dart';
import 'package:oxo/presentation/component/custom_button.dart';
import 'package:oxo/presentation/component/loading.dart';
import 'package:oxo/presentation/styles/style.dart';
import 'package:oxo/presentation/styles/theme.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:oxo/infrastructure/models/auth/auth.dart' as model;

import '../../routes/routes.dart';

class VerifyCode extends StatefulWidget {
  final String number;
  final ResendCodeType resendCodeType;
  const VerifyCode({
    required this.number,
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

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (context, colors, fonts, icons, c) {
      return BlocConsumer<SignInBloc, SignInState>(
          listener: (context, state) {
            if (state.proceedToChooseInterests) {
              Navigator.push(
                context,
                Routes.signUp(
                  context, widget.number
                ),
              );
            }
            if (state.proceedToChangePassword) {
              Navigator.push(
                context,
                Routes.enterNewPassword(
                  context,
                  widget.number,
                  _controller.text.trim(),
                ),
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
                        title: Text("Mobil raqamni tasdiqlash",
                          style: fonts.bodyText1.copyWith(fontSize: 20.sp,color: Style.black),),
                        centerTitle: true,
                        elevation: 0.5,
                        shadowColor: colors.stoke,
                      ),
                      body: Padding(
                        padding: EdgeInsets.fromLTRB(16.w, 32.h, 16.w, 50.h),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Maxfiy kod sizning ${widget.number} raqamingizga yuborildi iltimos maxfiy kodni kiriting.',
                                  style: fonts.bodyText1.copyWith(color: Style.black),
                                ),
                                SizedBox(height: 16.h),
                                Container(
                                  width: 240.w,
                                  padding: EdgeInsets.all(10.sp),
                                  color: Style.bgBlurFill,
                                  child: PinPut(
                                    withCursor: true,
                                    fieldsCount: 6,
                                    textStyle: fonts.headline3,
                                    controller: _controller,
                                    onSubmit: (ss){
                                      final body = model.VerifyCode(
                                            (v) => v
                                          ..number = widget.number.replaceAll(" ", "")
                                          ..code = ss,
                                      );

                                      context
                                          .read<SignInBloc>()
                                          .add(SignInEvent.verifyCode(
                                        code: body,
                                        type: widget.resendCodeType,
                                      ));
                                    },
                                    eachFieldConstraints: BoxConstraints(
                                        minHeight: 40.0, minWidth: 26.0.w),
                                    submittedFieldDecoration:
                                        _pinPutDecoration(colors),
                                    selectedFieldDecoration:
                                        _pinPutDecoration(colors),
                                    followingFieldDecoration:
                                        _pinPutDecoration(colors),
                                  ),
                                ),
                                SizedBox(height: 16.h),
                                TextButton(
                                  onPressed: () {
                                    final data = SendCode(
                                          (l) => l
                                        ..number = widget.number.replaceAll(" ", "")
                                        ..type = "signup",
                                    );
                                    context
                                        .read<SignInBloc>()
                                        .add(SignInEvent.sendCode(number: data));
                                  },
                                  child: Text(
                                    'send_again'.tr(),
                                    style: fonts.subtitle1.copyWith(
                                        color: colors.error,fontSize: 14.sp),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                TextButton(
                                  onPressed: () {
                                  Navigator.pop(context);
                                  },
                                  child: Text(
                                    'change_number'.tr(),
                                    style: fonts.subtitle1.copyWith(
                                        color: colors.disabledTxt),
                                  ),
                                ),
                                SizedBox(height: 32.h,),
                                CustomButton(
                                  isDisabled: !canProceed,
                                  onPressed: () {
                                    final body = model.VerifyCode(
                                          (v) => v
                                        ..number = widget.number.replaceAll(" ", "")
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

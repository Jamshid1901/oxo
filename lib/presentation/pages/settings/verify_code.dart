import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oxo/application/settings/change_email/email_bloc.dart';
import 'package:oxo/infrastructure/models/settings/change_email/confirm_email.dart';
import 'package:oxo/infrastructure/models/settings/change_email/new_email.dart';
import 'package:oxo/presentation/component/counter.dart';
import 'package:oxo/presentation/component/custom_button.dart';
import 'package:oxo/presentation/component/error_dialog.dart';
import 'package:oxo/presentation/component/loading.dart';
import 'package:oxo/presentation/styles/theme.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:easy_localization/easy_localization.dart';

class VerifyCodeSettings extends StatefulWidget {
  const VerifyCodeSettings({
    Key? key,
    this.email = '',
  }) : super(key: key);

  final String email;

  @override
  State<VerifyCodeSettings> createState() => _VerifyCodeState();
}

class _VerifyCodeState extends State<VerifyCodeSettings> {
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

  _valueListener(bool isDisabled) {
    if (isDisabled == true) {
      setState(() {
        canSendCodeAgain = true;
      });
    }else{
      setState(() {
        canSendCodeAgain = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (BuildContext context, CustomColorSet colors, FontSet fonts,
          IconSet icons, OxoTheme c) {
        return GestureDetector(
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
            body: BlocConsumer<EmailBloc, EmailState>(

              listenWhen: (prev, next) => (next.exception.isNotEmpty || next.isConfirmed),

              listener: (contextDialog, state) {
                if (state.exception.isNotEmpty) {
                  OxoError.openDialog(
                      contextDialog,
                      title: state.exception,
                      description: 'correct_credentials'.tr(),
                      buttonTitle: 'close'.tr(),
                  );
                }

                if (state.isConfirmed) {
                  OxoError.openDialog(
                    contextDialog,
                    title: 'successful'.tr(),
                    description: 'your_password_successfully_updated'.tr(),
                    buttonTitle: 'close'.tr(),
                    onTap: () {
                      Navigator.pop(contextDialog);
                      Navigator.pop(context);
                      Navigator.pop(context);
                      Navigator.pop(context);
                    },
                  );
                }
              },
              builder: (context, state) {
                return state.isLoading
                    ? const Loading()
                    : Padding(
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
                            'verification_code_sent'.tr(args: [widget.email]),
                            textAlign: TextAlign.center,
                            style: fonts.bodyText2,
                          ),
                          SizedBox(height: 25.h),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 68.0.w),
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
                                    final email = NewEmail(
                                (f) => f.newEmail = widget.email.trim(),
                          );
                                if(canSendCodeAgain){
                                context.read<EmailBloc>().add(
                                    EmailEvent.resendEmail(newEmail: email));
                              }
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
                            isDisabled: _valueListener,
                            style: fonts.subtitle1.copyWith(
                              color: colors.subText,
                            ),
                          ),
                        ],
                      ),
                      CustomButton(
                        isDisabled: !canProceed,
                        onPressed: () {
                          final body = ConfirmEmail(
                            (v) => v
                              ..newEmail = widget.email
                              ..code = _controller.text.trim(),
                          );

                          context.read<EmailBloc>().add(EmailEvent.confirmEmail(
                                confirmEmail: body,
                              ));
                        },
                        title: 'verify'.tr(),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}

BoxDecoration _pinPutDecoration(CustomColorSet colors) {
  return BoxDecoration(
    border: Border(
      bottom: BorderSide(color: colors.text),
    ),
  );
}

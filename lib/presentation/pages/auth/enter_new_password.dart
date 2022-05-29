import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:oxo/application/sign_in/sign_in_bloc.dart';
import 'package:oxo/infrastructure/models/auth/auth.dart';
import 'package:oxo/presentation/component/custom_button.dart';
import 'package:oxo/presentation/component/custom_text_field.dart';
import 'package:oxo/presentation/component/loading.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';

class EnterNewPassword extends StatefulWidget {
  final String email;
  final String code;
  const EnterNewPassword({
    Key? key,
    required this.code,
    required this.email,
  }) : super(key: key);

  @override
  State<EnterNewPassword> createState() => _EnterNewPasswordState();
}

class _EnterNewPasswordState extends State<EnterNewPassword> {
  late TextEditingController _passwordController;
  late TextEditingController _confirmPasswordController;

  bool confirmed = true;

  @override
  void initState() {
    super.initState();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (context, colors, fonts, icons, c) {
      return BlocBuilder<SignInBloc, SignInState>(builder: (context, state) {
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
                              icons.enterNewPassword,
                              height: 156.w,
                              width: 160.h,
                            ),
                            Text(
                              'please_enter_new_password'.tr(),
                              style: fonts.headline3,
                            ),
                            SizedBox(height: 24.h),
                            CustomTextField(
                              validator: (s){},
                              controller: _passwordController,
                              title: 'new_password'.tr(),
                              hintText: 'new_password'.tr(),
                              isPassword: true,
                            ),
                            SizedBox(height: 16.h),
                            CustomTextField(
                              validator: (s){},
                              controller: _confirmPasswordController,
                              title: 'confirm_password'.tr(),
                              hintText: 'confirm_password'.tr(),
                              isPassword: true,
                              error: confirmed ? null : 'not_match'.tr(),
                            ),
                          ],
                        ),
                        CustomButton(
                          onPressed: () {
                            if (_passwordController.text.trim() !=
                                    _confirmPasswordController.text.trim() ||
                                _passwordController.text.isEmpty ||
                                _confirmPasswordController.text.isEmpty) {
                              setState(() {
                                confirmed = false;
                              });
                              return;
                            }
                            final newP = NewPassword(
                              (n) => n
                                ..email = widget.email
                                ..code = widget.code
                                ..password = _passwordController.text.trim(),
                            );

                            context.read<SignInBloc>().add(
                                  SignInEvent.newPassword(newPassword: newP),
                                );
                          },
                          title: 'submit'.tr(),
                        ),
                      ],
                    ),
                  ),
                ),
              );
      });
    });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oxo/application/settings/change_password/password_bloc.dart';
import 'package:oxo/infrastructure/models/settings/password.dart';
import 'package:oxo/presentation/component/custom_button.dart';
import 'package:oxo/presentation/component/custom_text_field_password.dart';
import 'package:oxo/presentation/component/error_dialog.dart';
import 'package:oxo/presentation/component/loading.dart';
import 'package:oxo/presentation/component/ordinary_appbar.dart';
import 'package:oxo/presentation/styles/theme.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';
import 'package:easy_localization/easy_localization.dart';


//TODO: change it to scrollable

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);



  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  late TextEditingController oldPassword;
  late TextEditingController newPassword;
  late TextEditingController confirmNewPassword;

  @override
  void initState() {
    super.initState();
    oldPassword = TextEditingController();
    newPassword = TextEditingController();
    confirmNewPassword = TextEditingController();

  }
  @override
  void dispose() {
    super.dispose();
    oldPassword.dispose();
    newPassword.dispose();
    confirmNewPassword.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (BuildContext context, CustomColorSet colors, FontSet fonts,
          IconSet icons, OxoTheme controller) {
        return Scaffold(
          backgroundColor: colors.backgroundColor,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(56.h),
            child: OrdinaryAppbar(
              title: 'change_password'.tr(),
            ),
          ),
          body: BlocConsumer<PasswordBloc, PasswordState>(
            //listenWhen: (prev, next)=> (),

            listener: (contextDialog, state){
              if(state.update){
                OxoError.openDialog(
                  contextDialog,
                  title: 'successful'.tr(),
                  description: 'your_password_successfully_updated'.tr(),
                  buttonTitle: 'close'.tr(),
                  onTap: (){
                    Navigator.pop(contextDialog);
                    Navigator.pop(context);
                  },
                );

              }

              if (state.exception.isNotEmpty) {
                if((state.exception.toString() == 'invalid_credential'.tr()) ||
                    (state.exception.toString() == 'network_error'.tr()) ||
                    (state.exception.toString() == 'unknown_error'.tr())
                ){
                  OxoError.openDialog(
                      contextDialog,
                      title: state.exception,
                      description: 'correct_credentials'.tr(),
                      buttonTitle: 'close'.tr(),
                      onTap: (){
                        Navigator.pop(contextDialog);
                      }
                  );
                }

              }
            },
            builder: (context, state) {
              return state.isLoading
                  ? const Loading()
                  : Padding(
                padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
                child: Column(
                  children: [
                    CustomTextFieldPassword(
                      validator: (s) {  },
                      controller: oldPassword,
                      title: 'current_password'.tr(),
                      isPassword: true,
                      hintText: 'current_password'.tr(),
                      error: state.exception.toString() == 'old password length not valid' ? 'password_length_not_valid'.tr() : null,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.h),
                      child: CustomTextFieldPassword(
                        validator: (s) {  },
                        controller: newPassword,
                        title: 'new_password'.tr(),
                        isPassword: true,
                        hintText: 'new_password'.tr(),
                        error: state.exception.toString() == 'new password length not valid' ? 'password_length_not_valid'.tr() : null,
                      ),
                    ),
                    CustomTextFieldPassword(
                      validator: (s) {  },
                      controller: confirmNewPassword,
                      error: state.exception.toString() == 'doesnt match' ? "passwords_doesnt_match".tr()
                          : null ,
                      title: 'confirm_password'.tr(),
                      isPassword: true,
                      hintText: 'confirm_password'.tr(),
                    ),
                    SizedBox(height: 32.h,),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Text('Forgot password?', style: fonts.bodyText1
                            .copyWith(color: colors.primary))),

                  ],
                ),
              );
            },
          ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 40),
          child: CustomButton(
              onPressed: () {
                PasswordEntity entity = PasswordEntity((v)=> v
                  ..oldPassword= oldPassword.text.toString()
                  ..newPassword = newPassword.text.toString()
                );
                context.read<PasswordBloc>().add(PasswordEvent.changePassword(passwordEntity:entity,
                    confirmedEmail: confirmNewPassword.text.toString() ));

              }, title: 'save'.tr()),
        ),
        );
      },

    );
  }
}

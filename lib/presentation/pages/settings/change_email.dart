import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oxo/application/settings/change_email/email_bloc.dart';
import 'package:oxo/infrastructure/models/settings/change_email/new_email.dart';
import 'package:oxo/presentation/component/custom_button.dart';
import 'package:oxo/presentation/component/custom_text_field_password.dart';
import 'package:oxo/presentation/component/error_dialog.dart';
import 'package:oxo/presentation/component/loading.dart';
import 'package:oxo/presentation/component/ordinary_appbar.dart';
import 'package:oxo/presentation/routes/settings_page_routes/settings_routes.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';
import 'package:easy_localization/easy_localization.dart';

class ChangeEmailPage extends StatefulWidget {
  const ChangeEmailPage({Key? key}) : super(key: key);

  @override
  State<ChangeEmailPage> createState() => _ChangeEmailPageState();
}

class _ChangeEmailPageState extends State<ChangeEmailPage> {

  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (context, colors, fonts, icons, controller) {
      return Scaffold(
        backgroundColor: colors.backgroundColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(56.h),
          child: OrdinaryAppbar(
            title: 'change_email'.tr(),
          ),
        ),
        body: BlocConsumer<EmailBloc, EmailState>(

          listenWhen: (prev, next)=>((prev.isEmailSend != next.isEmailSend && next.isEmailSend) || next.exception.isNotEmpty),

          listener: (context, state) {
            if(state.isEmailSend){
              Navigator.push(context, SettingsRoutes.verifyCodeSettings(context,_controller.text.toString()));
            }
            if(state.exception.toString() == 'email already exists'){
              OxoError.openDialog(
                context,
                title: 'email_address_already'.tr(),
                description: 'email_address_description'.tr(),
                buttonTitle: 'close'.tr(),
              );
            }
          },

          builder: (context, state) {
            return state.isLoading ?
                const Loading()
                : Padding(
              padding: const EdgeInsets.fromLTRB(16, 32, 16, 40),
              child: Column(
                children: [
                  CustomTextFieldPassword(
                    validator: (s) {  },
                    controller: _controller,
                    title: 'email'.tr(),
                    isEmail: true,
                    hintText: 'info@site.com',
                    error: state.exception.toString() == 'invalid_credential'.tr() ? 'invalid_credential'.tr(): null,
                  ),
                  const Spacer(),
                  CustomButton(onPressed: () {
                    final body = NewEmail(
                          (v) => v
                          ..newEmail = _controller.text.toString()
                    );

                    context.read<EmailBloc>().add(EmailEvent.sendNewEmail(newEmail: body));

                  }, title: 'save'.tr())
                ],
              ),
            );
          },
        ),
      );
    },);
  }
}

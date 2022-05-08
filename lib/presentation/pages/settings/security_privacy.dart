import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oxo/application/settings/general/general_bloc.dart';
import 'package:oxo/presentation/component/error_dialog.dart';
import 'package:oxo/presentation/component/ordinary_appbar.dart';
import 'package:oxo/presentation/pages/settings/components/settings_item_row_switch.dart';
import 'package:oxo/presentation/pages/settings/components/settings_simple_row_item.dart';
import 'package:oxo/presentation/routes/routes.dart';
import 'package:oxo/presentation/routes/settings_page_routes/settings_routes.dart';
import 'package:oxo/presentation/styles/theme.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';
import 'package:easy_localization/easy_localization.dart';
import 'components/general_settings_custom_widget.dart';

class SecurityPage extends StatelessWidget {
  const SecurityPage({Key? key}) : super(key: key);

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
              title: 'security_privacy'.tr(),
            ),
          ),
          body: BlocConsumer<SettingsBloc, SettingsState>(
            listenWhen: (prev, next)=> (prev.exception != next.exception && next.exception.isNotEmpty),

            listener: (context, state){
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
              return Padding(
                padding: const EdgeInsets.all(16),
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    SettingsSimpleTextRow(
                      title: 'change_password',
                      onTap: () {
                        Navigator.push(context,
                            SettingsRoutes.getChangePasswordSettingsRoute(context));
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.h),
                      child: const CustomDivider(
                        title: 'privacy',
                      ),
                    ),
                    SettingsItemRowSwitch(
                      title: 'private_account',
                      status: state.privateAccount,
                      onTap: (status) {
                        OxoError.openDialog(
                          context,
                          title: 'switch_private_account'.tr(),
                          description: 'private_account_info'.tr(),
                          buttonTitle: 'switch_to_private'.tr(),
                          isFilled: true,
                        );
                      },
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    SettingsItemRowSwitch(
                      title: 'lfg_search',
                      status: state.lfgSearch,
                      onTap: (status) {},
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
}

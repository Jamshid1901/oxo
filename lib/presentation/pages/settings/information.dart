import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oxo/presentation/component/ordinary_appbar.dart';
import 'package:oxo/presentation/pages/settings/components/settings_simple_row_item.dart';
import 'package:oxo/presentation/routes/settings_page_routes/settings_routes.dart';
import 'package:oxo/presentation/styles/theme.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';

class InformationSettingsPage extends StatelessWidget {
  const InformationSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (BuildContext context, CustomColorSet colors, FontSet fonts, IconSet icons, OxoTheme controller) {
        return Scaffold(
          backgroundColor: colors.backgroundColor,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(56.h),
            child: OrdinaryAppbar(
              title: 'information'.tr(),
            ),
          ),

          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [

                SettingsSimpleTextRow(title: 'privacy_policy', onTap: (){
                  Navigator.push(context, SettingsRoutes.getPrivacyPolicyInfoSettingsRoute(context));
                }),
                const SizedBox(height: 16,),
                SettingsSimpleTextRow(title: 'terms_conditions', onTap: (){
                  Navigator.push(context, SettingsRoutes.getTermsConditionsSettingsRoute(context));

                }),
              ],
            ),
          ),
        ) ;
      },
    );
  }
}

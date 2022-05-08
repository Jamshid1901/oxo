import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oxo/presentation/component/options_dialog.dart';
import 'package:oxo/presentation/component/ordinary_appbar.dart';
import 'package:oxo/presentation/routes/settings_page_routes/settings_routes.dart';
import 'package:oxo/presentation/styles/theme.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

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
                title: 'settings'.tr(),
              ),
            ),
            body: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                SizedBox(
                  height: 16.h,
                ),
                SettingsRowItem(
                  title: 'general'.tr(),
                  icon: icons.general,
                  onTap: () {
                    Navigator.push(context, SettingsRoutes.getGeneralSettingsRoute(context));
                  },
                ),
                SettingsRowItem(
                  title: 'notifications'.tr(),
                  icon: icons.notifications,
                  onTap: () {
                      },
                ),
                SettingsRowItem(
                  title: 'draft_events'.tr(),
                  icon: icons.draftEvents,
                  onTap: () {
                    },
                ),
                SettingsRowItem(
                  title: 'bookmarked_events'.tr(),
                  icon: icons.save,
                  onTap: () {
                      },
                ),
                SettingsRowItem(
                  title: 'payment'.tr(),
                  icon: icons.payment,
                  onTap: () {
                    },
                ),
                SettingsRowItem(
                  title: 'security_privacy'.tr(),
                  icon: icons.security,
                  onTap: () {
                    Navigator.push(context, SettingsRoutes.getPrivacySettingsRoute(context));
                  },
                ),
                SettingsRowItem(
                  title: 'information'.tr(),
                  icon: icons.security,
                  onTap: () {
                    Navigator.push(context, SettingsRoutes.getInformationSettingsRoute(context));
                  },
                ),
                GestureDetector(
                    onTap: () async{
                      GridOptionsError.openDialog(
                          context,
                          title: 'would_you_logout'.tr(),
                          leftButtonTitle: 'close'.tr(),
                          rightButtonTitle: 'log_out'.tr(),
                          onTapRight: () async {
                            final a = await SharedPreferences.getInstance();
                            a.clear();

                          }
                      );
                    },
                  child: Container(
                    padding:
                    const EdgeInsets.only(bottom: 12, left: 16, top: 12),
                    color: colors.transparent,
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          icons.logOut,
                          height: 24.h,
                          width: 24.w,
                          color: colors.error,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 14),
                          child: Text(
                            'log_out'.tr(),
                            style:
                                fonts.bodyText2.copyWith(color: colors.error),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ));
      },
    );
  }
}

class SettingsRowItem extends StatelessWidget {
  final String title;
  final String icon;
  final GestureTapCallback onTap;

  const SettingsRowItem({
    Key? key,
    required this.title,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (BuildContext context, CustomColorSet colors, FontSet fonts,
          IconSet icons, OxoTheme controller) {
        return GestureDetector(
          onTap: onTap,
          child: Container(
            color: colors.transparent,
            padding: const EdgeInsets.only(bottom: 12, left: 16, top: 12),
            child: Row(
              children: [
                SvgPicture.asset(
                  icon,
                  height: 24.h,
                  width: 24.w,
                  color: colors.lightTextBody,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14),
                  child: Text(
                    title,
                    style:
                        fonts.bodyText2.copyWith(color: colors.lightTextBody),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

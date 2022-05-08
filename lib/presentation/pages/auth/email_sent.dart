import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:oxo/presentation/component/custom_button.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';

class EmailSent extends StatelessWidget {
  const EmailSent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (context, colors, fonts, icons, c) {
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
          body: Padding(
            padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 50.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(height: 35.h),
                    Image.asset(
                      icons.verifyEmail,
                      height: 100.h,
                      width: 100.h,
                    ),
                    SizedBox(height: 24.h),
                    Text(
                      'email_has_been_sent'.tr(),
                      style: fonts.headline3,
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      'check_your_email'.tr(),
                      textAlign: TextAlign.center,
                      style: fonts.bodyText2,
                    ),
                  ],
                ),
                CustomButton(
                  onPressed: () {
                    // Navigator.push(context, Routes.enterNewPassword(context));
                  },
                  title: 'resent'.tr(),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}

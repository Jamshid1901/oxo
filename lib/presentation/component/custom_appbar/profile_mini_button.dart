import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oxo/presentation/styles/theme.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';

class ProfileMiniButton extends StatelessWidget {
  final String title;
  final Gradient? gradient;
  final GestureTapCallback onTap;
  final double horizontalPadding;
  final double verticalPadding;
  const ProfileMiniButton({
    Key? key,
    required this.title,
    this.gradient,
    required this.onTap,
     this.horizontalPadding=38, this.verticalPadding=7,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (BuildContext context, CustomColorSet colors, FontSet fonts,
          IconSet icons, OxoTheme controller) {
        return GestureDetector(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
                gradient: gradient,
                border: Border.all(color: colors.primary),
                borderRadius: BorderRadius.circular(16)),
            padding: EdgeInsets.symmetric(vertical: verticalPadding.h, horizontal: horizontalPadding.w),
            child: Center(
              child: Text(
                title.tr(),
                style: fonts.subtitle1,
              ),
            )
          ),
        );
      },
    );
  }
}

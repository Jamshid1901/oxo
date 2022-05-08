import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oxo/presentation/styles/theme.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';

class SettingsSimpleTextRow extends StatelessWidget {
  const SettingsSimpleTextRow({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (BuildContext context, CustomColorSet colors, FontSet fonts, IconSet icons, OxoTheme controller) {
        return GestureDetector(
          onTap: onTap,
          child: Container(
            color: colors.transparent,
            child: Row(
              children: [
                Text(title.tr(),
                  style: fonts.bodyText2.copyWith(color: colors.lightTextBody),),
                const Spacer(),
                SvgPicture.asset(icons.rightArrow),
              ],
            ),
          ),
        ) ;
      },
    );
  }
}
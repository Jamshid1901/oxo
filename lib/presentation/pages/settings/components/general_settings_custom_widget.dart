import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oxo/presentation/styles/theme.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key? key,
    required this.title
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (BuildContext context, CustomColorSet colors, FontSet fonts, IconSet icons, OxoTheme controller) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(width: 8.w,),
            Transform.rotate(
              angle: pi/4,
              child: Container(
                height: 10.h, width: 10, color: colors.lightAccent,),
            ),
            Container(height: 2.h, width: 12.w,color: colors.lightAccent,),
            Container(height: 2.h, width: 12.w,color: colors.lightAccent,),
            Container(height: 2.h, width: 12.w,color: colors.lightAccent,),
            Container(height: 2.h, width: 12.w,color: colors.lightAccent,),

            Text(title.tr(), style: fonts.bodyText2.copyWith(color: colors.lightBodySubBodyText),),

            Container(height: 2.h, width: 12.w,color: colors.lightAccent,),
            Container(height: 2.h, width: 12.w,color: colors.lightAccent,),
            Container(height: 2.h, width: 12.w,color: colors.lightAccent,),
            Container(height: 2.h, width: 12.w,color: colors.lightAccent,),
            Transform.rotate(
              angle: pi/4,
              child: Container(
                height: 10.h, width: 10, color: colors.lightAccent,),
            ),
            SizedBox(width: 8.w,),

          ],
        ) ;
      },

    );
  }
}

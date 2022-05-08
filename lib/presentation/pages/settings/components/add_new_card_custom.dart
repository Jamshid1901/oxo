import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oxo/presentation/styles/theme.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';
import 'package:easy_localization/easy_localization.dart';


class AddNewCardCustom extends StatelessWidget {
  const AddNewCardCustom({
    Key? key,
    required this.onTap,
  }) : super(key: key);
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (BuildContext context, CustomColorSet colors, FontSet fonts, IconSet icons, OxoTheme controller) {
        return GestureDetector(
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 12.h),
            child: DottedBorder(
                color: colors.primary,
                dashPattern: const [8, 3],
                borderType: BorderType.RRect,
                radius: const Radius.circular(16),
                child: Padding(
                  padding:  EdgeInsets.symmetric(vertical: 12.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('+',style: fonts.bodyText1.copyWith(color: colors.primary)),
                      Text('add_new_card'.tr(), style: fonts.bodyText1.copyWith(color: colors.primary),)
                    ],),
                )),
          ),
        );
      },
    );
  }
}

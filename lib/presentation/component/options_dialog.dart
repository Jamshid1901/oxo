import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:oxo/presentation/routes/routes.dart';
import 'package:oxo/presentation/styles/style.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';

class GridOptionsError {
  static decode(String code) {
    final encodedCode = jsonDecode(code);

    return encodedCode;
  }

  static openDialog(
    BuildContext context, {
    String title = '',
    String? leftButtonTitle,
    required String rightButtonTitle,
    required VoidCallback onTapRight,
    VoidCallback? onTapLeft,
  }) {
    leftButtonTitle ??= 'cancel'.tr();
    return showDialog(
      context: context,
      builder: (_) {
        return ThemeWrapper(
          builder: (context, colors, fonts, icon, _) {
            return Dialog(
              backgroundColor: Style.transparent,
              insetPadding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(24.w),
                decoration: BoxDecoration(
                  color: colors.backgroundColorVariant,
                  borderRadius: BorderRadius.circular(24.r),
                ),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    Text(
                      title,
                      style: fonts.headline6,
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: 16.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                       Expanded(
                         child: GestureDetector(
                           onTap: onTapLeft ?? ()=> Navigator.pop(context),
                           child: Container(
                             alignment: Alignment.center,
                             padding: EdgeInsets.symmetric(vertical: 12.h,),
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(16.r),
                               border: Border.all(color: colors.primary),
                             ),
                             child: Text(leftButtonTitle!,
                               style: fonts.subtitle1.copyWith(color: colors.text),
                             ),
                           ),
                         ),
                       ),
                       SizedBox(width: 16.w,),
                       Expanded(
                         child: GestureDetector(
                           onTap: (){
                             onTapRight();
                             Navigator.pushAndRemoveUntil(
                                 context, Routes.getAppWidget(), (route) => false);
                           },
                           child: Container(
                             alignment: Alignment.center,
                             padding: EdgeInsets.symmetric(vertical: 12.h,),
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(16.r),
                               border: Border.all(color: colors.transparent),
                               gradient: Style.logoRadial
                             ),
                             child: Text(rightButtonTitle,
                               style: Style.medium14(
                                 size: 14.sp,
                                 color:  colors.white,
                               ),                         ),
                           ),
                         ),
                       ),
                      ],),
                    )
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

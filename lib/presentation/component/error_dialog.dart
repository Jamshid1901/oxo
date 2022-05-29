import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:oxo/presentation/component/custom_button.dart';
import 'package:oxo/presentation/styles/style.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';

class OxoError {
  static decode(String code) {
    final encodedCode = jsonDecode(code);

    return encodedCode;
  }

  static openDialog(
    BuildContext context, {
    String title = '',
    String description = '',
    Color? descriptionColor,
    String? buttonTitle,
    VoidCallback? onTap,
    bool isFilled = false,
  }) {
    buttonTitle ??= 'close'.tr();
    return showDialog(
      context: context,
      builder: (_) {
        return ThemeWrapper(
          builder: (context, colors, fonts, icon, _) {
            return Dialog(
              backgroundColor: Style.transparent,
              insetPadding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Container(
                margin: EdgeInsets.all(24.w),
                width: double.infinity,
                padding: EdgeInsets.all(24.w),
                decoration: BoxDecoration(
                  color: colors.backgroundColorVariant,
                  borderRadius: BorderRadius.circular(24.r),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    //alignment: WrapAlignment.center,
                    children: [
                      Text(
                        title,
                        textAlign: TextAlign.center,
                        style: fonts.headline6,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.h),
                        child: Text(
                          description,
                          style: descriptionColor == null ? fonts.bodyText1 :  fonts.bodyText1.copyWith(color: descriptionColor) ,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: isFilled
                            ? Padding(
                              padding: EdgeInsets.only(top: 8.h),
                              child: CustomButton(onPressed: onTap ??= () => Navigator.pop(context), title: buttonTitle!),
                            )
                            : CustomOutlinedButton(
                          onPressed: onTap ??= () => Navigator.pop(context),
                          title: buttonTitle!,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}

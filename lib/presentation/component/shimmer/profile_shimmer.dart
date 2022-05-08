

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oxo/presentation/styles/theme.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';
import 'package:shimmer/shimmer.dart';


class ShimmerProfile extends StatelessWidget {
  const ShimmerProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (BuildContext context, CustomColorSet colors, FontSet fonts, IconSet icons, OxoTheme controller) {
        return  Shimmer.fromColors(
          baseColor: colors.disabledTxt.withOpacity(0.5),
          highlightColor: colors.white,
          child:Column(
            children: [
              Container(
                height: 150.h,
                width: double.infinity,
                alignment: Alignment.center,
                color: colors.white,

              ),

              const Spacer(),
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  height: 36.h,
                  width: 110.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: colors.white,
                      borderRadius: BorderRadius.circular(6)
                  ),

                ),
              ),
              const SizedBox(height: 24,),
              Container(
                margin: const EdgeInsets.only(bottom: 16),
                width: double.infinity,
                height: 4,
                color: colors.white,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 16,
                    width: 36,
                    decoration: BoxDecoration(
                        color: colors.white,
                        borderRadius: BorderRadius.circular(4)
                    ),
                  ),
                  Container(
                    height: 16,
                    width: 36,
                    decoration: BoxDecoration(
                        color: colors.white,
                        borderRadius: BorderRadius.circular(4)
                    ),
                  ),
                  Container(
                    height: 16,
                    width: 36,
                    decoration: BoxDecoration(
                        color: colors.white,
                        borderRadius: BorderRadius.circular(4)
                    ),
                  ),

                ],),
              const SizedBox(height: 50,),

            ],
          ),
        );
      },
    );
  }
}

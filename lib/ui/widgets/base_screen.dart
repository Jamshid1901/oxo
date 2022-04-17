
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oxo/ui/utils/style.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen({Key? key}) : super(key: key);

  Future<void> failure({
    required String title,
    required String description,
    required BuildContext context,
  }) async =>
      await showDone(
        context: context,
        title: title,
        description: description,
        duration: const Duration(seconds: 3),
        iconPath: 'assets/svgs/error.svg',
      );

  Future<void> showDone({
    required BuildContext context,
    String title = 'Done!',
    String description =
        'We sent an email with a link to reset your password to your email address.',
    required Duration duration,
    String iconPath = 'assets/svgs/done.svg',
  }) async {
    await showDialog(
      context: context,
      builder: (_) {
        return FutureBuilder(
            future: Future.delayed(duration),
            builder: (context, snap) {
              if (snap.connectionState == ConnectionState.done) {
                Navigator.pop(context);
              }
              return Dialog(
                child: Container(
                  width: 330.w,
                  height: 240.h,
                  decoration: BoxDecoration(
                    color: Style.white,
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 32.h),
                      SvgPicture.asset(
                        iconPath,
                        height: 64.h,
                        width: 64.w,
                      ),
                      SizedBox(height: 24.h),
                      Text(
                        title,
                        textAlign: TextAlign.center,
                        style:
                            Style.bold24(size: 24.sp, color: Style.blackColor),
                      ),
                      SizedBox(height: 16.h),
                      Text(
                        description,
                        textAlign: TextAlign.center,
                        style: Style.regular15(
                          size: 16.sp,
                          color: Style.white,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

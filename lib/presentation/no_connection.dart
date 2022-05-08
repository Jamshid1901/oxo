import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:oxo/infrastructure/services/connectivity.dart';
import 'package:oxo/presentation/component/connectivity_ext.dart';
import 'package:oxo/presentation/routes/routes.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';

import 'component/custom_button.dart';
import 'component/loading.dart';

class NoConnection extends StatefulWidget {
  const NoConnection({Key? key}) : super(key: key);

  @override
  State<NoConnection> createState() => _NoConnectionState();
}

class _NoConnectionState extends State<NoConnection> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (context, colors, fonts, icons, c) {
      return isLoading
          ? const Loading()
          : Scaffold(
              backgroundColor: colors.backgroundColor,
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: SvgPicture.asset(c.isDark
                        ? icons.noConnectionDarkSvg
                        : icons.noConnectionLightSvg),
                  ),
                  SizedBox(height: 25.h),
                  Text('connection_is_afk'.tr(), style: fonts.headline3),
                  SizedBox(height: 20.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 60.w),
                    child: Text(
                      'no_connection_body'.tr(),
                      textAlign: TextAlign.center,
                      style: fonts.subtitle1,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  CustomOutlinedButton(
                    onPressed: () async {
                      setState(() {
                        isLoading = true;
                      });

                      final result = await ConnectivityX.create;
                      if (result.hasNetworkConnection) {
                        Navigator.pushAndRemoveUntil(
                            context, Routes.getAppWidget(), (route) => false);
                        return;
                      }
                      setState(() {
                        isLoading = false;
                      });
                    },
                    title: 'retry'.tr(),
                  ),
                ],
              ),
            );
    });
  }
}

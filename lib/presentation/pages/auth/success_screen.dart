import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:oxo/application/sign_in/sign_in_bloc.dart';
import 'package:oxo/domain/common/resend_code.dart';
import 'package:oxo/infrastructure/models/auth/auth.dart';
import 'package:oxo/presentation/component/custom_button.dart';
import 'package:oxo/presentation/component/custom_text_field.dart';
import 'package:oxo/presentation/component/custom_text_field_password.dart';
import 'package:oxo/presentation/component/loading.dart';
import 'package:oxo/presentation/routes/routes.dart';
import 'package:oxo/presentation/styles/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:oxo/infrastructure/models/auth/auth.dart' as models;

class SuccessPage extends StatefulWidget {

  const SuccessPage({Key? key,}) : super(key: key);

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (context, colors, fonts, icons, controller) {
        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: WillPopScope(
            onWillPop: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(
                context,
                Routes.signInPage,
              );
              return Future.value(true);
            },
            child: Scaffold(
              backgroundColor: colors.backgroundColor,
              appBar: AppBar(
                backgroundColor: colors.backgroundColorVariant,
                iconTheme: IconThemeData(color: colors.icon),
                title: Text(
                  "",
                  style: fonts.bodyText1
                      .copyWith(fontSize: 20.sp, color: Style.black),
                ),
                centerTitle: true,
                elevation: 0.5,
                shadowColor: colors.stoke,
              ),
              body: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 24.h),
                        SvgPicture.asset("assets/svgs/person.svg"),
                        SizedBox(height: 16.h),
                        Text(
                          "Ma’lumotlaringiz muvaffaqiyatli qabul qilindi. Davom etish tugmasini bosing",
                          style: fonts.bodyText1
                              .copyWith(fontSize: 14.sp, color: Style.black),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CustomButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                Routes.getMainRoute(
                                  context,
                                ));
                          },
                          title: 'continue'.tr(),
                        ),
                        SizedBox(height: 16.h),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

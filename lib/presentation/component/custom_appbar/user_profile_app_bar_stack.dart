import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oxo/presentation/styles/theme.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';

import '../profile_image.dart';

class UserProfileAppbarStack extends StatelessWidget {

  final String  avatar;
  final String backgroundImage;

  const UserProfileAppbarStack({
    Key? key,
    required this.avatar,
    required this.backgroundImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (BuildContext context, CustomColorSet colors, FontSet fonts,
          IconSet icons, OxoTheme controller) {
        return Stack(
          clipBehavior: Clip.none,
          children: [
            CachedNetworkImage(
              height: 150.h,
              fit: BoxFit.cover,
              width: double.infinity,
              alignment: Alignment.center,
              imageUrl: backgroundImage,
              placeholder: (context, url) => const SizedBox(),
              errorWidget: (context, url, error) => Image(
                image: AssetImage(icons.profileBackgroundDefaultImage),
                height: 150.h,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),

            Positioned(
              width: 96,
              height: 96,
              top: 102.h,
              left: MediaQuery.of(context).size.width/2 -48.w,
              child:  CircularProfileImage(
                fit: BoxFit.cover,
                height: 96,
                width: 96,
                imageUrl: avatar,
              ),
            ),
            Positioned(
                left: 22.w,
                top: 32.h,
                child: InkWell(
                  onTap: (){
                 Navigator.pop(context);
                  },
                  child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: colors.strokeDartMode,
                              blurRadius: 8,
                              spreadRadius: 4)
                        ],
                        border: Border.all(color: colors.strokeDartMode),
                      ),
                      child:  Icon(Icons.arrow_back, color: colors.white, size: 24.h,)),
                )),
            Positioned(
                right: 22.w,
                top: 32.h,
                child: InkWell(
                  onTap: (){

                  },
                  child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: colors.strokeDartMode,
                              blurRadius: 8,
                              spreadRadius: 4)
                        ],
                        border: Border.all(color: colors.strokeDartMode),
                      ),
                      child: SvgPicture.asset(
                        icons.menuIcon,
                        width: 24.w,
                        height: 24.h,
                      )),
                )),
            Positioned(
                left: 22.w,
                bottom: 16.h,
                child: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: colors.strokeDartMode,
                              blurRadius: 10,
                              spreadRadius: 4)
                        ],
                        border: Border.all(color: colors.strokeDartMode),
                        borderRadius: BorderRadius.circular(6)),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          icons.rateStar,
                          width: 24.w,
                          height: 24.h,
                        ),
                        SizedBox(
                          width: 6.w,
                        ),
                        Text(
                          '4.5',
                          style: fonts.headline4.copyWith(color: colors.white),
                        )
                      ],
                    ))),
          ],
        );
      },
    );
  }
}
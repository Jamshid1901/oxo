import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oxo/presentation/routes/settings_page_routes/settings_routes.dart';
import 'package:oxo/presentation/styles/theme.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';

import '../profile_image.dart';

class CustomAppbarStack extends StatelessWidget {

  final String  avatar;
  final String backgroundImage;
  final GestureTapCallback? onTapDeleteAvatar;
  final GestureTapCallback? onTapUploadAvatar;
  final GestureTapCallback? onTapDeleteBackgroundPhoto;
  final GestureTapCallback? onTapUploadBackgroundPhoto;

  const CustomAppbarStack({
    Key? key,
    required this.avatar,
    required this.backgroundImage,
    required this.onTapUploadAvatar,
    required this.onTapDeleteAvatar,
    required this.onTapDeleteBackgroundPhoto,
    required this.onTapUploadBackgroundPhoto,
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
              height: 150,
              fit: BoxFit.cover,
              width: double.infinity,
              alignment: Alignment.center,
              imageUrl: backgroundImage,
              placeholder: (context, url) => const SizedBox(),
              errorWidget: (context, url, error) => Image(
                image: AssetImage(icons.profileBackgroundDefaultImage),
                height: 150,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),

            Positioned(
              width: 96,
              height: 96,
              top: 102,
              left: MediaQuery.of(context).size.width/2 -48,
              child:  GestureDetector(
                onTap: (){
                  showModalBottomSheet(
                      shape: const RoundedRectangleBorder( borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft:Radius.circular(16),)
                      ),
                      context: context,
                      builder: (context) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            SizedBox(height: 24.h,),
                            Text('Change profile photo', style: fonts.headline2,),
                            ListTile(
                              leading: SvgPicture.asset(icons.addBackgImage),
                              title:  Text('New profile photo', style: fonts.bodyText2.copyWith(color: colors.text),),
                              onTap: onTapUploadAvatar,
                            ),
                            ListTile(
                              leading: SvgPicture.asset(icons.delete, color: colors.error,),
                              title:  Text('Delete', style: fonts.bodyText2.copyWith(color: colors.error),),
                              onTap: onTapDeleteAvatar,
                            ),
                            SizedBox(height: 24.h,),
                            Center(child: InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Text('Cancel', style:  fonts.bodyText2.copyWith(color: colors.text)))),
                            SizedBox(height: 24.h,),
                          ],
                        );
                      });
                },
                child: CircularProfileImage(
                  fit: BoxFit.cover,
                  height: 96,
                  width: 96,
                  imageUrl: avatar,
                ),
              ),
            ),
            Positioned(
                right: 22.w,
                top: 32.h,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, SettingsRoutes.getSettingsRoute(context));

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
                        icons.settings,
                        width: 24.w,
                        height: 24.h,
                      )),
                )),
            Positioned(
                right: 22.w,
                bottom: 16.h,
                child:  GestureDetector(
                  onTap: (){
                    showModalBottomSheet(
                        shape: const RoundedRectangleBorder( borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft:Radius.circular(16),)
                        ),
                        context: context,
                        builder: (context) {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              SizedBox(height: 24.h,),
                              Text('Change background photo', style: fonts.headline2,),
                              ListTile(
                                leading: SvgPicture.asset(icons.addBackgImage),
                                title:  Text('New background photo', style: fonts.bodyText2.copyWith(color: colors.text),),
                                onTap: onTapUploadBackgroundPhoto,
                              ),
                              ListTile(
                                leading: SvgPicture.asset(icons.delete, color: colors.error,),
                                title:  Text('Delete', style: fonts.bodyText2.copyWith(color: colors.error),),
                                onTap: onTapDeleteBackgroundPhoto,
                              ),
                              SizedBox(height: 24.h,),
                              Center(child: InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text('Cancel', style:  fonts.bodyText2.copyWith(color: colors.text)))),
                              SizedBox(height: 24.h,),
                            ],
                          );
                        });
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
                        icons.addProfileImage,
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

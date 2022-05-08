

import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oxo/presentation/styles/theme.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';

class AddPhotoDottedBorder extends StatefulWidget {
  const AddPhotoDottedBorder({
    Key? key,
    required this.imageUrl,
    required this.backgroundImage,
    required this.onTap,
    required this.isLoading,
  }) : super(key: key);

  final String imageUrl;
  final String? backgroundImage;
  final GestureTapCallback onTap;
  final bool isLoading;

  @override
  State<AddPhotoDottedBorder> createState() => _AddPhotoDottedBorderState();
}

class _AddPhotoDottedBorderState extends State<AddPhotoDottedBorder> {




  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: ThemeWrapper(
        builder: (BuildContext context, CustomColorSet colors, FontSet fonts,
            IconSet icons, OxoTheme controller) {
          return CachedNetworkImage(
              alignment: Alignment.center,
              fit: BoxFit.cover,
              imageUrl: widget.backgroundImage ?? widget.imageUrl ,
              imageBuilder: (context, imageProvider) => Container(
                height: 172.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(image:imageProvider,
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(4)

                ),
              ),
              placeholder: (context, url) => DottedBorder(
                  color: colors.strokeDashed,
                  dashPattern: const [12, 6],
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(4),
                  child: Container(
                      color: colors.grey,
                      height: 172.h,
                      width: double.infinity,
                      child: Center(child: CircularProgressIndicator(color: colors.primary,),)

                  )),
              errorWidget: (context, url, error) => DottedBorder(
                  color: colors.strokeDashed,
                  dashPattern: const [12, 6],
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(4),
                  child: Container(
                    color: colors.grey,
                    height: 172.h,
                    width: double.infinity,
                    child: widget.isLoading
                        ? Center(child: CircularProgressIndicator(color: colors.primary,),)
                        : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          icons.addPhoto,
                          height: 24.h,
                          width: 24.h,
                          color: colors.strokeDashed,
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        Text(
                          'add_cover_photo'.tr(),
                          style: fonts.subtitle1
                              .copyWith(color: colors.addPhotoTextColor),
                        ),
                      ],
                    ),
                  ))

          );
        },
      ),
    );
  }
}
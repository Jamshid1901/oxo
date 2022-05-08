
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oxo/presentation/styles/theme.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';



class CircularProfileImage extends StatefulWidget {

  final String imageUrl;
  final double height;
  final double width;
  final BoxFit fit;
  final String? avatarFile;

  const CircularProfileImage({
    Key? key,
    required this.imageUrl,
    required this.height,
    required this.width,
    required this.fit,
    this.avatarFile,
  }) : super(key: key);

  @override
  State<CircularProfileImage> createState() => _CircularProfileImageState();
}


class _CircularProfileImageState extends State<CircularProfileImage> {


  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (BuildContext context, CustomColorSet colors, FontSet fonts, IconSet icons, OxoTheme controller) {
        return  CachedNetworkImage(
          height: widget.height.h,
          width: widget.width.w,
          fit: widget.fit,
          alignment: Alignment.center,
          imageUrl: widget.avatarFile ?? widget.imageUrl,
          imageBuilder: (context, imageProvider) => Container(
              width: widget.width.w,
              height: widget.height.h,
              decoration: BoxDecoration(
                color: colors.white,
                border: Border.all(color: colors.white, width: 2),
                shape: BoxShape.circle,
                image: DecorationImage(image: imageProvider,
                    fit: BoxFit.cover),)
          ),
          placeholder: (context, url) =>  Center(child: CircularProgressIndicator(color: colors.primary)),
          errorWidget: (context, url, error) =>  Container(
            height: widget.height.h,
            width: widget.width.w,
            decoration: BoxDecoration(
                border: Border.all(color: colors.white, width: 2),
                shape: BoxShape.circle,
                image: DecorationImage(image:AssetImage(icons.profileImageDefault),)
            ),
          ),
        );
      },
    );
  }
}

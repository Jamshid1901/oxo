
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:oxo/ui/utils/style.dart';

class CircleAvatarNoImage extends StatelessWidget {
  final String firstName;
  final String userId;
  final double height;
  final String imagePath;
  final bool isActive;

  const CircleAvatarNoImage({
    Key? key,
    this.firstName = "",
    this.height = 48,
    this.userId = "",
    this.imagePath = "", this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 5,
        bottom: 5.0,
      ),
      child: Container(
        height: height,
        width: height,
        decoration: BoxDecoration(
            color: isActive ?  Style.blackColor :  Style.white,
            border: Border.all(color: Style.blackColor , width: 1.0),
            borderRadius: BorderRadius.circular(height/2)),
        child: imagePath.isEmpty
            ? Center(
                child: firstName.isNotEmpty ? Text(
                  firstName.isNotEmpty ? firstName.substring(0, 1).toUpperCase() : "",
                  style: TextStyle(
                      color: isActive ?  Style.white : Style.blackColor,
                      fontSize: height / 2 - 2,
                      fontWeight: FontWeight.w600),
                ) : Icon(Icons.person,size: height/2,),
              )
            : ClipRRect(
                borderRadius: BorderRadius.circular(height - 24),
                child: CachedNetworkImage(
                  imageUrl: imagePath,
                  placeholder: (context, url) => const CircularProgressIndicator(strokeWidth: 1,),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
      ),
    );
  }
}

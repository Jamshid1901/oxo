import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oxo/presentation/styles/theme.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';


class OrdinaryAppbar extends StatelessWidget {
  final String title;

  const OrdinaryAppbar({
    Key? key,
    required this.title,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (BuildContext context, CustomColorSet colors, FontSet fonts, IconSet icons, OxoTheme controller) {
        return AppBar(
          elevation: 0.5,
          shadowColor: colors.stoke,
          backgroundColor: colors.backgroundColorVariant,
          leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.asset(icons.leftArrow,height: 24.h,width: 24.w,color: colors.strokeDashed,),
            ),
          ),
          title:  Text(title, style: fonts.headline3,),
          centerTitle: true,) ;
      },
    );
  }
}

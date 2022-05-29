import 'package:flutter/material.dart';

class Style {
  Style._();
  // colors.
  static const Color icon2 = Color(0x7A000000);

  static const Color bgDark = Color(0xff1A1A1A);

  static const Color darkBar = Color(0xFF202325);

  static const Color bgBlurFill = Color(0xffF4F4F4);

  static const Color negative = Color(0xffE96E6E);

  static const Color informationText = Color(0xff07AEB9);

  static const Color primary = Color(0xff19BAEE);

  static const Color primaryVariant = Color(0xff298BE2);

  static const Color twitterBack = Color(0xff1DA1F2);

  static const Color faceBookBack = Color(0xff0078FF);

  static const Color primaryShadow = Color(0xffF4FAFF);

  static const Color bgDarkV = Color(0xff202325);

  static const Color secondary = Color(0xffF15B40);

  static const Color secondaryVariant = Color(0xffFF7763);

  static const Color error = Color(0xffFF5247);

  static const Color red = Color(0xffFE0000);

  static const Color success = Color(0xff31D0AA);

  static const Color white = Color(0xffffffff);

  static const Color icon = Color(0xff86869D);

  /// is it stoke or stroke ?
  static const Color stoke = Color(0xffECF1F4);


  static const Color strokeDashed = Color(0xff707997);


//TODO: change to stroke

  static const Color stokeDark = Color(0xff2B2F32);

  static const Color strokeDartMode = Color(0x66555376);

  static const Color disabledDark = Color(0xff303437);

  static const Color disabledDarkTxt = Color(0xff6C7072);

  static const Color disabledLight = Color(0xffE3E4E5);

  static const Color disabledLightText = Color(0xff979C9E);

  static const Color accent = Color(0xffECF1F4);

  static const Color text = Color(0xff1C2A5B);

  static const Color bodyText = Color(0xff494966);

  static const Color subText = Color(0xffC2C2C2);

  static const Color subTextDark = Color(0xff7A7B85);

  static const Color black = Colors.black;

  static const Color black45 = Color(0x73000000);

  static const Color transparent = Colors.transparent;

  static const Color grey = Color(0xffF9F9F9);


  static const Color addPhotoTextColor = Color(0xff9299B0);

  static const Color lightBodySubBodyText = Color(0xff9299B0);

  static const Color lightAccent = Color(0xffF0F4F8);

  static const Color darkAccent = Color(0xff202325);

  static const Color lightTextBody = Color(0xff555F84);


  static const RadialGradient radialIcon = RadialGradient(
    colors: [
      Color(0xff4D4D4D),
      Color(0x00FFFFFF),
    ],
    stops: [
      0.08,
      1.0,
    ],
  );

  static const RadialGradient bgGrediant = RadialGradient(
    colors: [
      Color(0xff070610),
      Color(0xff080628),
    ],
    stops: [
      0.0,
      1.0,
    ],
  );

  static const RadialGradient bgBlureStroke = RadialGradient(
    colors: [
      Color(0xffffffff),
      Color(0x00ffffff),
    ],
    stops: [
      0.0,
      1.0,
    ],
  );

  static const LinearGradient secondaryGrediant = LinearGradient(
    colors: [
      Color(0xff298BE2),
      Color(0xff239BE6),
      Color(0xff1FA8E9),
      Color(0xff19B9EE),
      Color(0xff13C8F1),
      Color(0xff0CDDF7),
      Color(0xff0CDDF7),
    ],
    stops: [
      0.22,
      0.30,
      0.47,
      0.61,
      0.75,
      0.86,
      1.0,
    ],
  );
  static const RadialGradient secondaryRadialGradiant = RadialGradient(
    colors: [
      Color(0xff19B9EE),
      Color(0xff239BE6),


    ],
    stops: [
      0.24,
      0.70,


    ],
  );

  static const LinearGradient logoRadial = LinearGradient(
    colors: [
      Color(0xffFF5247),
      Color(0xffE9493F),

    ],
    stops: [
      0.7,
      0.9,
    ],
  );

  static const LinearGradient topBar = LinearGradient(
    colors: [
      Color(0xffFFFFFF),
      Color(0x8AFFFFFF),
      Color(0x4fFFFFFF),
      Color(0x29FFFFFF),
      Color(0x00FFFFFF),
    ],
    stops: [
      0.01,
      0.51,
      0.80,
      0.92,
      1.0,
    ],
  );

  // shadows.

  static const BoxShadow blueIconShadow = BoxShadow(
    color: Color(0x2061A9FD),
    blurRadius: 7.41,
    offset: Offset(0, 4.47),
  );

  static const BoxShadow itemShadow = BoxShadow(
    color: Color(0x3361A9FD),
    blurRadius: 13,
    offset: Offset(0, 4),
  );

  static const BoxShadow vendorShadow = BoxShadow(
    color: Color(0x0A000000),
    blurRadius: 7,
    offset: Offset(0, 4),
  );

  //fonsts.

  static TextStyle light96({double size = 96, Color color = text}) {
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w300,
    );
  }

  static TextStyle light60({double size = 60, Color color = text}) {
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w300,
    );
  }

  static TextStyle regular48({double size = 48, Color color = text}) {
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle regular34({double size = 34, Color color = text}) {
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle regular24({double size = 24, Color color = text}) {
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle regular16({double size = 16, Color color = text}) {
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle regular14({double size = 14, Color color = text}) {
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle regular12({double size = 12, Color color = text}) {
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle medium20({double size = 20, Color color = text}) {
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle medium16({double size = 16, Color color = text}) {
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle medium14({double size = 14, Color color = text}) {
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle semiBold16({double size = 16, Color color = text}) {
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle semiBold14({double size = 14, Color color = text}) {
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle bold20({double size = 20, Color color = text}) {
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle bold16({double size = 16, Color color = text}) {
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w700,
    );
  }
}

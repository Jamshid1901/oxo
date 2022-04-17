import 'package:flutter/material.dart';

class Style {
  Style._();

  // ###################### Colors ##########################
  static const white = Colors.white;

  static const transparent = Colors.transparent;

  static const redColor = Color(0xffEA3838);

  static const primaryColor = Color(0xff000000);

  static const blackColor = Color(0xff000000);

  // @@@@@@@@@@@@@ Fonts @@@@@@@@@@@@@@@@@@@@@@@@

  static bold24({double size = 24, Color color = Style.blackColor}) => TextStyle(
      fontSize: size,
      fontWeight: FontWeight.bold,
      color: color,
      decoration: TextDecoration.none);

  static semi18({double size = 18, Color color =  Style.blackColor}) => TextStyle(
      fontSize: size,
      fontWeight: FontWeight.w600,
      color: color,
      decoration: TextDecoration.none);

  static bold16({double size = 16, Color color = Style.blackColor, TextDecoration textDecoration = TextDecoration.none}) => TextStyle(
      fontSize: size,
      fontWeight: FontWeight.bold,
      color: color,
      decoration: textDecoration);

  static semi16({double size = 16, Color color = Style.blackColor}) => TextStyle(
      fontSize: size,
      fontWeight: FontWeight.w600,
      color: color,
      decoration: TextDecoration.none);

  static regular16({double size = 16, Color color = Style.blackColor ,  TextDecoration textDecoration = TextDecoration.none}) =>
      TextStyle(
          fontSize: size,
          fontWeight: FontWeight.w400,
          color: color,
          decoration: textDecoration);

  static regular15({double size = 15, Color color = Style.blackColor}) =>
      TextStyle(
          fontSize: size,
          fontWeight: FontWeight.w400,
          color: color,
          decoration: TextDecoration.none);

  static semi14({double size = 14, Color color = Style.blackColor}) => TextStyle(
      fontSize: size,
      fontWeight: FontWeight.w600,
      color: color,
      decoration: TextDecoration.none);

  static semi12({double size = 12, Color color = Style.blackColor}) => TextStyle(
      fontSize: size,
      fontWeight: FontWeight.w600,
      color: color,
      decoration: TextDecoration.none);

  // @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
}

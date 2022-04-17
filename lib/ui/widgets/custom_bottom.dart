

import 'package:flutter/material.dart';
import 'package:oxo/ui/utils/style.dart';

import 'animation_effect.dart';

class MainButton extends StatelessWidget {
  final double height;
  final String text;
  final Function onPressed;
  final EdgeInsets? margin;
  final TextStyle textStyle;

  const MainButton({
    Key? key,
    this.height = 48,
    this.margin,
    required this.text,
    required this.onPressed,
    required this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimationButtonEffect(
      child: GestureDetector(
        onTap: () => onPressed(),
        behavior: HitTestBehavior.opaque,
        child: Container(
          height: height,
          width: double.infinity,
          margin: margin,
          decoration: BoxDecoration(
            color: Style.blackColor,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Center(
            child: Text(
              text,
              style: textStyle,
            ),
          ),
        ),
      ),
    );
  }
}

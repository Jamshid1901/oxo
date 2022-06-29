import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oxo/presentation/styles/style.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';

class CustomTextFieldPassword extends StatefulWidget {
  final String title;
  final String hintText;
  final bool isEmail;
  final bool isPassword;
  final String? error;
  final TextEditingController? controller;
  final Function(String?) validator;

  const CustomTextFieldPassword(
      {Key? key,
      this.controller,
      this.hintText = '',
      this.title = '',
      this.isPassword = false,
      this.isEmail = false,
      this.error,required this.validator})
      : super(key: key);

  @override
  State<CustomTextFieldPassword> createState() => _CustomTextFieldPasswordState();
}

class _CustomTextFieldPasswordState extends State<CustomTextFieldPassword> {
  bool isUnVisiable = false;

  _changeVisibility() {
    setState(() {
      isUnVisiable = !isUnVisiable;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (context, colors, fonts, icons, _) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widget.title.isNotEmpty
              ? Text(
                  widget.title,
                  style: fonts.subtitle1.copyWith(
                    color: widget.error == null ? colors.text : colors.negative,
                  ),
                )
              : Container(),
          widget.title.isNotEmpty ? SizedBox(height: 6.h) : Container(),
          SizedBox(

            child: TextFormField(
              validator: (str) => widget.validator(str),
              controller: widget.controller,
              style: fonts.bodyText2.copyWith(color: colors.text),
              obscureText: widget.isPassword && isUnVisiable,
              keyboardType: _getKeyboartType(),
              decoration: InputDecoration(
                errorMaxLines: 2,
                suffixIcon: widget.isPassword
                    ? IconButton(
                        onPressed: _changeVisibility,
                        icon: Icon(
                          isUnVisiable
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: colors.icon,
                        ),
                      )
                    : null,
                focusColor: Style.black,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.r),
                  borderSide: BorderSide(color: colors.stoke, width: 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.r),
                  borderSide: BorderSide(color: colors.stoke, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.r),
                  borderSide: const BorderSide(color: Style.black, width: 1),
                ),
                hintText: widget.hintText,
                hintStyle: fonts.bodyText1,
                errorText: widget.error,
                errorStyle: fonts.caption.copyWith(color: colors.negative),
                contentPadding: EdgeInsets.only(left: 12.w),
              ),
            ),
          ),
        ],
      );
    });
  }

  TextInputType? _getKeyboartType() {
    if (widget.isEmail) {
      return TextInputType.emailAddress;
    } else if (widget.isPassword) {
      return TextInputType.visiblePassword;
    }
  }
}

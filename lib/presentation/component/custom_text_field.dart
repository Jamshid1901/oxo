import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oxo/presentation/styles/style.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';

class CustomTextField extends StatefulWidget {
  final String title;
  final String hintText;
  final String titleHintText;
  final bool isEmail;
  final bool isPassword;
  final bool obscureText;
  final int minLines;
  final int maxLines;
  final Widget? suffixIcon;
  final void Function()? onsuffixIconPressed;
  final void Function()? onPressed;
  final TextInputType keyboardType;
  final String? error;
  final int? maxLength;
  final TextEditingController? controller;
  final List<TextInputFormatter>? formatter;
  final TextAlign textAlign;
  final bool readOnly;
  final ValueChanged<String>? onChanged;
  final FocusNode? focusNode;

  const CustomTextField(
      {Key? key,
        this.onPressed,
      this.onsuffixIconPressed,
      this.formatter,
      this.controller,
      this.hintText = '',
      this.title = '',
      this.isPassword = false,
      this.minLines = 1,
      this.maxLines = 2,
      this.isEmail = false,
      this.keyboardType = TextInputType.text,
      this.suffixIcon,
      this.maxLength,
      this.obscureText = false,
      this.error,
      this.titleHintText = '',
      this.readOnly = false,
      this.onChanged,
      this.focusNode,
  this.textAlign=TextAlign.start})
      : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
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
              : const SizedBox(),
          widget.title.isNotEmpty ? SizedBox(height: 6.h) : const SizedBox(),
          widget.titleHintText.isNotEmpty
              ? Text(
                  widget.titleHintText,
                  style: fonts.caption.copyWith(
                    color: colors.informationText,
                  ),
                )
              : const SizedBox(),
          widget.titleHintText.isNotEmpty
              ? SizedBox(height: 6.h)
              : const SizedBox(),
          TextFormField(
            onTap: widget.onPressed,
            textInputAction: TextInputAction.done,
            focusNode: widget.focusNode,
            maxLength: widget.maxLength,
            onChanged: widget.onChanged,
            readOnly: widget.readOnly,
            textAlign: widget.textAlign,
            inputFormatters: widget.formatter,
            minLines: widget.minLines,
            maxLines: widget.maxLines,
            controller: widget.controller,
            style: fonts.bodyText2.copyWith(color: colors.text),
            obscureText: widget.obscureText,
            keyboardType: widget.keyboardType,
            decoration: InputDecoration(
              counterText: widget.maxLength == 500 ? null : '',
              suffixIcon: widget.suffixIcon != null
                  ? IconButton(
                      icon: widget.suffixIcon!,
                      onPressed: widget.onsuffixIconPressed ?? () {})
                  : null,
              focusColor: Style.primary,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.r),
                borderSide: BorderSide(color: colors.stoke, width: 1),
              ),
              disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
               borderSide: BorderSide(color: colors.disabled, width: 1),
             ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.r),
                borderSide: BorderSide(color: colors.stoke, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.r),
                borderSide: BorderSide(color: widget.readOnly? colors.disabled : colors.primary, width: 1),
              ),
              hintText: widget.hintText,
              hintStyle: fonts.bodyText1,
              errorText: widget.error,
              errorStyle: fonts.caption.copyWith(color: colors.negative),
              contentPadding: EdgeInsets.only(left: 12.w, top: 10.h, right: 12.w),
            ),
          ),
        ],
      );
    });
  }
}

class MaskedTextInputFormatter2 extends TextInputFormatter {
  final String mask;
  final String separator;

  MaskedTextInputFormatter2({
    required this.mask,
    required this.separator,
  });

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    print(oldValue.text);
    if (newValue.text.isNotEmpty) {
      if (newValue.text.length > oldValue.text.length) {
        if (newValue.text.length > mask.length) return oldValue;
        if (newValue.text.length < mask.length &&
            mask[newValue.text.length - 1] == separator) {
          return TextEditingValue(
            text:
            '${oldValue.text}$separator${newValue.text.substring(newValue.text.length - 1)}',
            selection: TextSelection.collapsed(
              offset: newValue.selection.end + 1,
            ),
          );
        }
      }
    }
    return newValue;
  }
}
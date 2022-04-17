
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oxo/ui/utils/style.dart';


class CustomTextField extends StatefulWidget {
  final String title;
  final String hint;
  final String helperText;
  final String? initialValue;
  final FormFieldValidator<String> validator;
  final ValueChanged<String> onChanged;
  final TextInputType? inputType;
  final TextInputAction? textInputAction;
  final VoidCallback? textInputActionOnTap;
  final bool isObscure;
  final bool isNumber;
  final int? maxLine;
  final int? maxLength;
  final Color helpTextColor;
  final Color borderColor;
  final Widget? prefix;
  final Widget? suffix;
  final TextEditingController controller;

  const CustomTextField({
    Key? key,
    required this.title,
    required this.hint,
    required this.validator,
    required this.onChanged,
    this.helperText = '',
    this.initialValue,
    this.inputType,
    this.textInputAction,
    this.textInputActionOnTap,
    this.isObscure = false,
    this.maxLine = 1,
    this.maxLength,
    this.helpTextColor = Colors.red,
    this.prefix,
    this.borderColor = Style.blackColor,
    this.suffix,
    required this.controller,
    this.isNumber = false,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _isShowing = false;

  OutlineInputBorder _border(BuildContext context) {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Style.blackColor),
      borderRadius: BorderRadius.circular(8.0),
    );
  }

  @override
  void initState() {
    _isShowing = widget.isObscure;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          widget.title,
          style: Style.bold16().copyWith(color: Style.blackColor),
        ),
        TextFormField(
          cursorColor: Style.blackColor,
          initialValue: widget.initialValue,
          validator: widget.validator,
          textInputAction: widget.textInputAction,
          keyboardType: widget.inputType,
          textAlignVertical: TextAlignVertical.center,
          obscureText: _isShowing,
          controller: widget.controller,
          style: Style.regular16()
              .copyWith(color: Style.blackColor, fontSize: 18),
          maxLines: widget.inputType == TextInputType.multiline
              ? null
              : widget.maxLine,
          maxLength: widget.maxLength,
          decoration: InputDecoration(
            fillColor: Style.transparent,
            filled: true,
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: widget.borderColor),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: widget.borderColor),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: widget.borderColor),
            ),
            helperText: widget.helperText,
            helperMaxLines: 2,
            helperStyle: Style.regular16()
                .copyWith(fontSize: 12, color: widget.helpTextColor),
            prefixIcon: widget.prefix,
            prefixIconConstraints: const BoxConstraints(minWidth: 32, maxWidth: 64),
            suffix: widget.suffix,
            suffixIconConstraints: const BoxConstraints(minWidth: 12, maxWidth: 32),
            suffixIcon: Visibility(
              visible: widget.isObscure,
              child: GestureDetector(
                onTap: () => setState(() => _isShowing = !_isShowing),
                child: Padding(
                  padding: const EdgeInsets.only(right: 12, left: 4),
                  child: Icon(
                    !_isShowing ? Icons.visibility : Icons.visibility_off,
                    color: Style.blackColor,
                  ),
                ),
              ),
            ),
            contentPadding: const EdgeInsets.fromLTRB(4, 10, 5, 10),
            hintText: widget.hint,
            hintStyle:
                Style.regular16().copyWith(color: Style.blackColor),
          ),
          onChanged: (value) => widget.onChanged(value),
          onFieldSubmitted: (term) {
            if (widget.textInputActionOnTap != null) {
              widget.textInputActionOnTap!();
            }
          },
        ),
      ],
    );
  }
}

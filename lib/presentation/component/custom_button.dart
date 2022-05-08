import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:oxo/presentation/styles/style.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';

class CustomOutlinedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final bool isDisabled;
  const CustomOutlinedButton({
    Key? key,
    required this.onPressed,
    this.isDisabled = false,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (context, colors, fonts, _, __) {
        return OutlinedButton(
          onPressed: onPressed,
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
            side: MaterialStateProperty.all<BorderSide>(
              const BorderSide(color: Style.primary, width: 1),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 42.w),
            child: Text(
              title,
              style: fonts.subtitle1.copyWith(color: colors.text),
            ),
          ),
        );
      },
    );
  }
}

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final bool isDisabled;
  final double verticalPadding;
 const  CustomButton({
    Key? key,
    required this.onPressed,
    this.isDisabled = false,
    required this.title,
    this.verticalPadding=12,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (context, colors, _, __, ___) {
      return InkWell(
        onTap: isDisabled ? () {} : onPressed,
        child: Container(
          width: double.infinity,
          padding:  EdgeInsets.symmetric(vertical: verticalPadding),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              border: Border.all(
                color: isDisabled ? colors.disabled : Style.primary,
                width: 0.7,
              ),
              gradient: isDisabled ? null : Style.secondaryGrediant,
              color: isDisabled ? colors.disabled : null,
              boxShadow: isDisabled
                  ? null
                  : const [
                      Style.blueIconShadow,
                    ]),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: Style.medium14(
              size: 14.sp,
              color: isDisabled ? colors.disabledTxt : Style.white,
            ),
          ),
        ),
      );
    });
  }
}

class CustomCheckButton extends StatefulWidget {
  final ValueChanged<bool> onchanged;
  final bool isDissabled;
  const CustomCheckButton({
    Key? key,
    required this.onchanged,
    this.isDissabled = false,
  }) : super(key: key);

  @override
  _CustomCheckButtonState createState() => _CustomCheckButtonState();
}

class _CustomCheckButtonState extends State<CustomCheckButton> {
  bool _isChecked = false;

  _updateCheckedStatus() {
    if (widget.isDissabled && !_isChecked) {
      return;
    }
    setState(() {
      _isChecked = !_isChecked;
    });
    widget.onchanged(_isChecked);
  }

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (context, colors, fonts, icons, _) {
      return GestureDetector(
        onTap: _updateCheckedStatus,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: 32.h,
          width: 105.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            gradient: _isChecked ? Style.secondaryGrediant : null,
            border: Border.all(
              color: widget.isDissabled ? colors.disabled : Style.primary,
              width: 0.7,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                _isChecked ? icons.check : icons.plus,
                color: _isChecked
                    ? colors.white
                    : widget.isDissabled
                        ? colors.disabled
                        : colors.icon,
              ),
              SizedBox(width: 8.w),
              Text(
                _isChecked ? 'added'.tr() : 'add'.tr(),
                style: fonts.subtitle2.copyWith(
                  color: _isChecked
                      ? colors.white
                      : widget.isDissabled
                          ? colors.disabled
                          : colors.icon,
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}

class CustomDottedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  const CustomDottedButton({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (context, color, fonts, icons, _) {
        return GestureDetector(
          onTap: onPressed,
          child: DottedBorder(
            radius: Radius.circular(16.r),
            borderType: BorderType.RRect,
            color: color.primary,
            dashPattern: const [8, 8],
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 12.h),
                child: Center(
                    child: Text(
                  title,
                  style: fonts.subtitle1.copyWith(color: color.primaryVariant),
                )),
              ),
            ),
          ),
        );
      },
    );
  }
}

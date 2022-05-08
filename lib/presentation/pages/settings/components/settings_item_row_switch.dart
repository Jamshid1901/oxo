import 'package:flutter/cupertino.dart';
import 'package:oxo/presentation/styles/theme.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';
import 'package:easy_localization/easy_localization.dart';

class SettingsItemRowSwitch extends StatefulWidget {
  const SettingsItemRowSwitch({
    Key? key,
    required this.title,
    required this.status,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final bool status;
 final  ValueChanged<bool>? onTap;

  @override
  State<SettingsItemRowSwitch> createState() => _SettingsItemRowSwitchState();
}

class _SettingsItemRowSwitchState extends State<SettingsItemRowSwitch> {
  bool _status = true;
  @override
  void initState() {
    _status=widget.status;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (BuildContext context, CustomColorSet colors, FontSet fonts, IconSet icons, OxoTheme controller) {
        return  Row(
          children: [
            Text(widget.title.tr(),
              style: fonts.bodyText2.copyWith(color: colors.lightTextBody),),
            const Spacer(),
            CupertinoSwitch(
              value: _status,
              onChanged: (status){
                setState(() {
                  _status=status;
                });
                widget.onTap!(status);
              },
              thumbColor: _status ? colors.primary : colors.white,
              activeColor: colors.primary.withOpacity(0.12),
              trackColor: colors.lightAccent,
            )
          ],
        ) ;
      },

    );
  }
}

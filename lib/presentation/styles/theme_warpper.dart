import 'package:flutter/material.dart';
import 'package:oxo/presentation/styles/theme.dart';
import 'package:provider/provider.dart';

class ThemeWrapper extends StatelessWidget {
  final Function(
    BuildContext context,
    CustomColorSet colors,
    FontSet fonts,
    IconSet icons,
    OxoTheme controller,
  ) builder;

  const ThemeWrapper({Key? key, required this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<OxoTheme>(builder: (context, theme, _) {
      return builder(context, theme.colors, theme.fonts, theme.icons, theme);
    });
  }
}

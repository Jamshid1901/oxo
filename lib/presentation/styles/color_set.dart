part of 'theme.dart';

class CustomColorSet {
  final Color text;

  final Color bodyText;

  final Color subText;

  final Color stoke;

  final Color primary;

  final Color white;

  final Color icon;

  final Color negative;

  final Color grey;

  final Color backgroundColor;

  final Color backgroundColorVariant;

  final Color disabled;

  final Color disabledTxt;

  final Color strokeDashed;

  final Color addPhotoTextColor;

  final Color lightBodySubBodyText;

  final Color secondary;

  final Color success;

  final Color lightTextBody;

  final Color strokeDartMode;

  final Color darkBar;

  final Color error;

  final Color transparent;

  final Color lightAccent;

  final Color disabledLight;

  final Color primaryVariant;

  final Color informationText;

  final Color constBlack;

  final Color twitterBackground;

  final Color faceBookBackground;

  final Color primaryShadow;

  final Color secondaryVariant;

  CustomColorSet._({
    required this.informationText,
    required this.primaryVariant,
    required this.disabled,
    required this.disabledTxt,
    required this.text,
    required this.bodyText,
    required this.subText,
    required this.stoke,
    required this.primary,
    required this.white,
    required this.icon,
    required this.negative,
    required this.grey,
    required this.backgroundColor,
    required this.backgroundColorVariant,
    required this.strokeDashed,
    required this.addPhotoTextColor,
    required this.lightBodySubBodyText,
    required this.secondary,
    required this.success,
    required this.lightTextBody,
    required this.strokeDartMode,
    required this.darkBar,
    required this.error,
    required this.transparent,
    required this.lightAccent,
    required this.disabledLight,
    required this.constBlack,
    required this.twitterBackground,
    required this.faceBookBackground,
    required this.primaryShadow,
    required this.secondaryVariant,
  });

  factory CustomColorSet._create(CustomThemeMode mode) {
    final isLight = mode.isLight;

    final text = isLight ? Style.text : Style.white;

    final bodyText = isLight ? Style.bodyText : Style.accent;

    final subText = isLight ? Style.subText : Style.subTextDark;

    final stoke = isLight ? Style.stoke : Style.stokeDark;

    const primary = Style.primary;

    const white = Style.white;

    const icon = Style.icon;

    const negative = Style.negative;

    final grey = isLight ? Style.grey : Style.bgDarkV;

    final backgroundColor = isLight ? Style.white : Style.bgDark;

    final backgroundColorVariant = isLight ? Style.white : Style.bgDarkV;

    final disabled = isLight ? Style.disabledLight : Style.disabledLight;

    final disabledTxt =
        isLight ? Style.disabledLightText : Style.disabledLightText;

    const strokeDashed = Style.strokeDashed;

    final addPhotoTextColor =
        isLight ? Style.addPhotoTextColor : Style.strokeDashed;

    final lightBodySubBodyText =
        isLight ? Style.lightBodySubBodyText : Style.lightAccent;

    const secondary = Style.secondary;

    const success = Style.success;

    final lightTextBody = isLight ? Style.lightTextBody : Style.disabledLightText;

    const strokeDartMode = Style.strokeDartMode;

    const darkBar = Style.darkBar;

    const primaryVariant = Style.primaryVariant;

    const error = Style.error;

    const transparent = Style.transparent;

    const lightAccent = Style.lightAccent;

    const disabledLight = Style.disabledLight;

    const informationText = Style.informationText;

    const constBlack = Style.black45;

    const twitterBackground = Style.twitterBack;

    const faceBookBackground = Style.faceBookBack;

    const primaryShadow = Style.primaryShadow;

    const secondaryVariant = Style.secondaryVariant;


    return CustomColorSet._(
      informationText: informationText,
      primaryVariant: primaryVariant,
      disabled: disabled,
      disabledTxt: disabledTxt,
      text: text,
      bodyText: bodyText,
      subText: subText,
      stoke: stoke,
      primary: primary,
      white: white,
      icon: icon,
      negative: negative,
      grey: grey,
      backgroundColor: backgroundColor,
      backgroundColorVariant: backgroundColorVariant,
      strokeDashed: strokeDashed,
      addPhotoTextColor: addPhotoTextColor,
      lightBodySubBodyText: lightBodySubBodyText,
      secondary: secondary,
      success: success,
      lightTextBody: lightTextBody,
      strokeDartMode: strokeDartMode,
      darkBar: darkBar,
      lightAccent: lightAccent,
      error: error,
      transparent:transparent,
      disabledLight: disabledLight,
      constBlack: constBlack,
      twitterBackground : twitterBackground,
      faceBookBackground: faceBookBackground,
      primaryShadow: primaryShadow,
      secondaryVariant: secondaryVariant,
    );
  }

  static CustomColorSet createOrUpdate(CustomThemeMode mode) {
    return CustomColorSet._create(mode);
  }
}

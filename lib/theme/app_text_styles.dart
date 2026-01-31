import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyles {
  const AppTextStyles._();

  static const String fontFamily = 'Sora';

  static const TextStyle title1 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.bold,
    fontSize: 38,
    letterSpacing: 0,
  );

  static const TextStyle title2 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.bold,
    fontSize: 32,
    letterSpacing: 0,
  );

  static const TextStyle title2R = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.normal,
    fontSize: 32,
    letterSpacing: 0,
  );

  static const TextStyle title3 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.bold,
    fontSize: 24,
    letterSpacing: 0,
  );

  static const TextStyle headline1 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600, // SemiBold
    fontSize: 20,
    letterSpacing: 0,
  );

  static const TextStyle headline2 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600, // SemiBold
    fontSize: 16,
    letterSpacing: 0,
  );

  static const TextStyle body = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.normal,
    fontSize: 16,
    letterSpacing: 0,
  );

  static const TextStyle bodyItalic = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.normal,
    fontSize: 16,
    fontStyle: FontStyle.italic,
    letterSpacing: 0,
  );

  static const TextStyle subhead1 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500, // Medium
    fontSize: 14,
    letterSpacing: 0,
  );

  static const TextStyle subhead2 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.normal,
    fontSize: 14,
    height: 20 / 14, // lineHeight = 20.sp, fontSize = 14.sp
    letterSpacing: 0,
  );

  static const TextStyle subheadItalic = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.normal,
    fontSize: 14,
    fontStyle: FontStyle.italic,
    letterSpacing: 0,
  );

  static const TextStyle subhead1Italic = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500, // Medium
    fontSize: 14,
    fontStyle: FontStyle.italic,
    letterSpacing: 0,
  );

  static const TextStyle caption = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.normal,
    fontSize: 12,
    letterSpacing: 0,
  );

  static const TextStyle captionSB = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600, // SemiBold
    fontSize: 12,
    letterSpacing: 0,
  );

  static const TextStyle micro = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.normal,
    fontSize: 10,
    letterSpacing: 0,
  );

  static const TextStyle microSB = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600, // SemiBold
    fontSize: 10,
    letterSpacing: 0,
  );
}

// Extension to easily apply color to any TextStyle
extension TextStyleColor on TextStyle {
  TextStyle get dark => copyWith(color: AppColors.dark);
  TextStyle get light => copyWith(color: AppColors.light);
  TextStyle get lightGrey => copyWith(color: AppColors.lightGrey);
  TextStyle get steelLight => copyWith(color: AppColors.steelLight);
  TextStyle get steelDark => copyWith(color: AppColors.steelDark);
  TextStyle get steel10 => copyWith(color: AppColors.steel10);
  TextStyle get steel20 => copyWith(color: AppColors.steel20);
  TextStyle get grey => copyWith(color: AppColors.grey);
  TextStyle get grey50 => copyWith(color: AppColors.grey50);
  TextStyle get yellow50 => copyWith(color: AppColors.yellow50);
  TextStyle get yellow20 => copyWith(color: AppColors.yellow20);
  TextStyle get green20 => copyWith(color: AppColors.green20);
  TextStyle get black50 => copyWith(color: AppColors.black50);
  TextStyle get white50 => copyWith(color: AppColors.white50);
  TextStyle get redG => copyWith(color: AppColors.redG);
  TextStyle get greenD => copyWith(color: AppColors.greenD);
  TextStyle get greenL => copyWith(color: AppColors.greenL);
  TextStyle get green50 => copyWith(color: AppColors.green50);
  TextStyle get redD => copyWith(color: AppColors.redD);
  TextStyle get redL => copyWith(color: AppColors.redL);
  TextStyle get lagunaD => copyWith(color: AppColors.lagunaD);
  TextStyle get lagunaL => copyWith(color: AppColors.lagunaL);
  TextStyle get red50 => copyWith(color: AppColors.red50);
  TextStyle get red20 => copyWith(color: AppColors.red20);
  TextStyle get purpleD => copyWith(color: AppColors.purpleD);
  TextStyle get purpleL => copyWith(color: AppColors.purpleL);
  TextStyle get issykBlue => copyWith(color: AppColors.issykBlue);
  TextStyle get elenaD => copyWith(color: AppColors.elenaD);

  // Semantic Colors
  TextStyle get jacob => copyWith(color: AppColors.jacob);
  TextStyle get remus => copyWith(color: AppColors.remus);
  TextStyle get lucian => copyWith(color: AppColors.lucian);
  TextStyle get tyler => copyWith(color: AppColors.tyler);
  TextStyle get bran => copyWith(color: AppColors.bran);
  TextStyle get leah => copyWith(color: AppColors.leah);
  TextStyle get claude => copyWith(color: AppColors.claude);
  TextStyle get lawrence => copyWith(color: AppColors.lawrence);
  TextStyle get jeremy => copyWith(color: AppColors.jeremy);
  TextStyle get laguna => copyWith(color: AppColors.laguna);
  TextStyle get purple => copyWith(color: AppColors.purple);
  TextStyle get raina => copyWith(color: AppColors.raina);
  TextStyle get andy => copyWith(color: AppColors.andy);

  // Base Colors
  TextStyle get white => copyWith(color: AppColors.white);
  TextStyle get transparent => copyWith(color: AppColors.transparent);

  TextStyle withColor(Color color) => copyWith(color: color);
}

import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../app_text_styles.dart';

// Generic helper
Widget _text(
  String text, {
  TextStyle? style,
  Color? color,
  TextAlign? textAlign,
  TextOverflow? overflow,
  int? maxLines,
}) {
  return Text(
    text,
    textAlign: textAlign,
    overflow: overflow ?? TextOverflow.clip,
    maxLines: maxLines,
    style: style?.copyWith(color: color),
  );
}

// Headline1 variants
Widget headline1_grey(
  String text, {
  TextAlign? textAlign,
  TextOverflow? overflow,
  int? maxLines,
}) => _text(
  text,
  style: AppTextStyles.headline1,
  color: AppColors.grey,
  textAlign: textAlign,
  overflow: overflow,
  maxLines: maxLines,
);

Widget headline1_bran(
  String text, {
  TextAlign? textAlign,
  TextOverflow? overflow,
  int? maxLines,
}) => _text(
  text,
  style: AppTextStyles.headline1,
  color: AppColors.bran,
  textAlign: textAlign,
  overflow: overflow,
  maxLines: maxLines,
);

Widget headline1_leah(
  String text, {
  TextAlign? textAlign,
  TextOverflow? overflow,
  int? maxLines,
}) => _text(
  text,
  style: AppTextStyles.headline1,
  color: AppColors.leah,
  textAlign: textAlign,
  overflow: overflow,
  maxLines: maxLines,
);

Widget headline1_lucian(
  String text, {
  TextAlign? textAlign,
  TextOverflow? overflow,
  int? maxLines,
}) => _text(
  text,
  style: AppTextStyles.headline1,
  color: AppColors.lucian,
  textAlign: textAlign,
  overflow: overflow,
  maxLines: maxLines,
);

// Headline2 variants
Widget headline2_grey(
  String text, {
  TextAlign? textAlign,
  TextOverflow? overflow,
  int? maxLines,
}) => _text(
  text,
  style: AppTextStyles.headline2,
  color: AppColors.grey,
  textAlign: textAlign,
  overflow: overflow,
  maxLines: maxLines,
);

Widget headline2_leah(
  String text, {
  TextAlign? textAlign,
  TextOverflow? overflow,
  int? maxLines,
}) => _text(
  text,
  style: AppTextStyles.headline2,
  color: AppColors.leah,
  textAlign: textAlign,
  overflow: overflow,
  maxLines: maxLines,
);

Widget headline2_jacob(
  String text, {
  TextAlign? textAlign,
  TextOverflow? overflow,
  int? maxLines,
}) => _text(
  text,
  style: AppTextStyles.headline2,
  color: AppColors.jacob,
  textAlign: textAlign,
  overflow: overflow,
  maxLines: maxLines,
);

Widget headline2_remus(
  String text, {
  TextAlign? textAlign,
  TextOverflow? overflow,
  int? maxLines,
}) => _text(
  text,
  style: AppTextStyles.headline2,
  color: AppColors.remus,
  textAlign: textAlign,
  overflow: overflow,
  maxLines: maxLines,
);

Widget headline2_lucian(
  String text, {
  TextAlign? textAlign,
  TextOverflow? overflow,
  int? maxLines,
}) => _text(
  text,
  style: AppTextStyles.headline2,
  color: AppColors.lucian,
  textAlign: textAlign,
  overflow: overflow,
  maxLines: maxLines,
);

Widget headline2_issykBlue(
  String text, {
  TextAlign? textAlign,
  TextOverflow? overflow,
  int? maxLines,
}) => _text(
  text,
  style: AppTextStyles.headline2,
  color: AppColors.issykBlue,
  textAlign: textAlign,
  overflow: overflow,
  maxLines: maxLines,
);

Widget headline2_grey50(
  String text, {
  TextAlign? textAlign,
  TextOverflow? overflow,
  int? maxLines,
}) => _text(
  text,
  style: AppTextStyles.headline2,
  color: AppColors.grey50,
  textAlign: textAlign,
  overflow: overflow,
  maxLines: maxLines,
);

Widget headline2_yellow50(
  String text, {
  TextAlign? textAlign,
  TextOverflow? overflow,
  int? maxLines,
}) => _text(
  text,
  style: AppTextStyles.headline2,
  color: AppColors.yellow50,
  textAlign: textAlign,
  overflow: overflow,
  maxLines: maxLines,
);

Widget headline2_green50(
  String text, {
  TextAlign? textAlign,
  TextOverflow? overflow,
  int? maxLines,
}) => _text(
  text,
  style: AppTextStyles.headline2,
  color: AppColors.green50,
  textAlign: textAlign,
  overflow: overflow,
  maxLines: maxLines,
);

Widget headline2_red50(
  String text, {
  TextAlign? textAlign,
  TextOverflow? overflow,
  int? maxLines,
}) => _text(
  text,
  style: AppTextStyles.headline2,
  color: AppColors.red50,
  textAlign: textAlign,
  overflow: overflow,
  maxLines: maxLines,
);

// Body variants
Widget body_bran(
  String text, {
  TextAlign? textAlign,
  TextOverflow? overflow,
  int? maxLines,
}) => _text(
  text,
  style: AppTextStyles.body,
  color: AppColors.bran,
  textAlign: textAlign,
  overflow: overflow,
  maxLines: maxLines,
);

Widget body_grey(
  String text, {
  TextAlign? textAlign,
  TextOverflow? overflow,
  int? maxLines,
}) => _text(
  text,
  style: AppTextStyles.body,
  color: AppColors.grey,
  textAlign: textAlign,
  overflow: overflow,
  maxLines: maxLines,
);

Widget body_leah(
  String text, {
  TextAlign? textAlign,
  TextOverflow? overflow,
  int? maxLines,
}) => _text(
  text,
  style: AppTextStyles.body,
  color: AppColors.leah,
  textAlign: textAlign,
  overflow: overflow,
  maxLines: maxLines,
);

Widget body_jacob(
  String text, {
  TextAlign? textAlign,
  TextOverflow? overflow,
  int? maxLines,
}) => _text(
  text,
  style: AppTextStyles.body,
  color: AppColors.jacob,
  textAlign: textAlign,
  overflow: overflow,
  maxLines: maxLines,
);

Widget body_remus(
  String text, {
  TextAlign? textAlign,
  TextOverflow? overflow,
  int? maxLines,
}) => _text(
  text,
  style: AppTextStyles.body,
  color: AppColors.remus,
  textAlign: textAlign,
  overflow: overflow,
  maxLines: maxLines,
);

Widget body_lucian(
  String text, {
  TextAlign? textAlign,
  TextOverflow? overflow,
  int? maxLines,
}) => _text(
  text,
  style: AppTextStyles.body,
  color: AppColors.lucian,
  textAlign: textAlign,
  overflow: overflow,
  maxLines: maxLines,
);

// Subhead1 variants
Widget subhead1_grey(
  String text, {
  TextAlign? textAlign,
  TextOverflow? overflow,
  int? maxLines,
}) => _text(
  text,
  style: AppTextStyles.subhead1,
  color: AppColors.grey,
  textAlign: textAlign,
  overflow: overflow,
  maxLines: maxLines,
);

Widget subhead1_leah(
  String text, {
  TextAlign? textAlign,
  TextOverflow? overflow,
  int? maxLines,
}) => _text(
  text,
  style: AppTextStyles.subhead1,
  color: AppColors.leah,
  textAlign: textAlign,
  overflow: overflow,
  maxLines: maxLines,
);

Widget subhead1_jacob(
  String text, {
  TextAlign? textAlign,
  TextOverflow? overflow,
  int? maxLines,
}) => _text(
  text,
  style: AppTextStyles.subhead1,
  color: AppColors.jacob,
  textAlign: textAlign,
  overflow: overflow,
  maxLines: maxLines,
);

Widget subhead1_lucian(
  String text, {
  TextAlign? textAlign,
  TextOverflow? overflow,
  int? maxLines,
}) => _text(
  text,
  style: AppTextStyles.subhead1,
  color: AppColors.lucian,
  textAlign: textAlign,
  overflow: overflow,
  maxLines: maxLines,
);

Widget subhead1_lagunaD(
  String text, {
  TextAlign? textAlign,
  TextOverflow? overflow,
  int? maxLines,
}) => _text(
  text,
  style: AppTextStyles.subhead1,
  color: AppColors.lagunaD,
  textAlign: textAlign,
  overflow: overflow,
  maxLines: maxLines,
);

Widget caption_greenD(
  String text, {
  TextAlign? textAlign,
  TextOverflow? overflow,
  int? maxLines,
}) => _text(
  text,
  style: AppTextStyles.caption,
  color: AppColors.greenD,
  textAlign: textAlign,
  overflow: overflow,
  maxLines: maxLines,
);

// Subhead2 variants
Widget subhead2_grey(
  String text, {
  TextAlign? textAlign,
  TextOverflow? overflow,
  int? maxLines,
}) => _text(
  text,
  style: AppTextStyles.subhead2,
  color: AppColors.grey,
  textAlign: textAlign,
  overflow: overflow,
  maxLines: maxLines,
);

Widget subhead2_leah(
  String text, {
  TextAlign? textAlign,
  TextOverflow? overflow,
  int? maxLines,
}) => _text(
  text,
  style: AppTextStyles.subhead2,
  color: AppColors.leah,
  textAlign: textAlign,
  overflow: overflow,
  maxLines: maxLines,
);

Widget subhead2_jacob(
  String text, {
  TextAlign? textAlign,
  TextOverflow? overflow,
  int? maxLines,
}) => _text(
  text,
  style: AppTextStyles.subhead2,
  color: AppColors.jacob,
  textAlign: textAlign,
  overflow: overflow,
  maxLines: maxLines,
);

Widget subhead2_lucian(
  String text, {
  TextAlign? textAlign,
  TextOverflow? overflow,
  int? maxLines,
}) => _text(
  text,
  style: AppTextStyles.subhead2,
  color: AppColors.lucian,
  textAlign: textAlign,
  overflow: overflow,
  maxLines: maxLines,
);

Widget subhead2_redG(
  String text, {
  TextAlign? textAlign,
  TextOverflow? overflow,
  int? maxLines,
}) => _text(
  text,
  style: AppTextStyles.subhead2,
  color: AppColors.redG,
  textAlign: textAlign,
  overflow: overflow,
  maxLines: maxLines,
);
// Title3 variants
Widget title3_leah(
  String text, {
  TextAlign? textAlign,
  TextOverflow? overflow,
  int? maxLines,
}) => _text(
  text,
  style: AppTextStyles.title3,
  color: AppColors.leah,
  textAlign: textAlign,
  overflow: overflow,
  maxLines: maxLines,
);

Widget title3_jacob(
  String text, {
  TextAlign? textAlign,
  TextOverflow? overflow,
  int? maxLines,
}) => _text(
  text,
  style: AppTextStyles.title3,
  color: AppColors.jacob,
  textAlign: textAlign,
  overflow: overflow,
  maxLines: maxLines,
);

// CaptionSB variants
Widget captionSB_grey(
  String text, {
  TextAlign? textAlign,
  TextOverflow? overflow,
  int? maxLines,
}) => _text(
  text,
  style: AppTextStyles.captionSB,
  color: AppColors.grey,
  textAlign: textAlign,
  overflow: overflow,
  maxLines: maxLines,
);

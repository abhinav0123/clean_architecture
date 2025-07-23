import 'package:clean_architecture/config/theme/app_theme.dart';
import 'package:clean_architecture/core/utils/window.dart';

import 'package:flutter/material.dart';

class AppTextTheme {
  static get rootText =>
      themeData.textTheme.titleSmall!.appFontFamily.copyWith();

  static get label => themeData.textTheme.bodyLarge!.copyWith(
        color: lightModeColors.darknight,
        fontSize: Window.getFontSize(20),
        fontWeight: FontWeight.w600,
        fontFamily: 'Poppins',
      );

  static get header => themeData.textTheme.bodyLarge!.copyWith(
        color: lightModeColors.darknight,
        fontSize: Window.getFontSize(15),
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins',
      );

  static get description => rootText!.copyWith(
        color: lightModeColors.darknight,
        fontWeight: FontWeight.w500,
        fontSize: Window.getFontSize(14),
      );

  static get button => rootText!.copyWith(
        fontSize: Window.getFontSize(14),
        color: lightModeColors.snowwhite,
        fontWeight: FontWeight.w600,
      );

  static get noteTextTheme =>
      themeData.textTheme.bodyLarge!.appFontFamily.copyWith(
        color: lightModeColors.darknight,
        fontSize: Window.getFontSize(12),
        fontWeight: FontWeight.normal,
        letterSpacing: 0,
      );

  static get hintTextTheme => themeData.textTheme.titleSmall!.copyWith(
        color: lightModeColors.neutral400,
        fontSize: Window.getFontSize(13),
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
      );

  static get noteLinkTextTheme => noteTextTheme.copyWith(
        color: lightModeColors.blue700,
        fontFamily: 'Poppins',
      );

  static get pageTitle => themeData.textTheme.bodyLarge!.copyWith(
        color: lightModeColors.darknight,
        fontSize: Window.getFontSize(24),
        fontWeight: FontWeight.w600,
        fontFamily: 'Poppins',
      );

  static get pageSubtitle => themeData.textTheme.bodyLarge!.copyWith(
        color: lightModeColors.titleGrey,
        fontSize: Window.getFontSize(14),
        fontWeight: FontWeight.w400,
        fontFamily: 'Poppins',
      );

  static get smallTitle =>
      themeData.textTheme.bodyLarge!.appFontFamily.copyWith(
        color: lightModeColors.snowwhite,
        fontSize: Window.getFontSize(14),
        fontWeight: FontWeight.w500,
      );

  static get smallSubTitle =>
      themeData.textTheme.bodyLarge!.appFontFamily.copyWith(
        color: lightModeColors.snowwhite,
        fontSize: Window.getFontSize(12),
        fontWeight: FontWeight.w200,
      );

  static get fancyTitle => themeData.textTheme.bodyLarge!.madani.copyWith(
        fontSize: Window.getFontSize(32),
        color: lightModeColors.darknight,
        fontFamily: 'Poppins',
      );

  static get fancyAmountTheme => themeData.textTheme.bodyLarge!.madani.copyWith(
        color: lightModeColors.blue700,
        fontSize: Window.getFontSize(36),
        fontFamily: 'Poppins',
      );

  static get fancyText => themeData.textTheme.bodyLarge!.madani.copyWith(
        fontSize: Window.getFontSize(32),
        color: lightModeColors.darknight,
        fontFamily: 'Poppins',
      );

  static get fancyCreditText => themeData.textTheme.bodyLarge!.madani.copyWith(
        fontSize: Window.getFontSize(22),
        color: lightModeColors.darknight,
        fontFamily: 'Poppins',
      );

  static get funkyText => themeData.textTheme.bodyLarge!.madani.copyWith(
        fontSize: Window.getFontSize(32),
        fontWeight: FontWeight.bold,
        color: lightModeColors.darknight,
        fontFamily: 'Poppins',
      );

  static get fancyTextSmall => themeData.textTheme.bodyLarge!.nayuki.copyWith(
        fontSize: Window.getFontSize(20),
        fontWeight: FontWeight.w400,
        color: lightModeColors.darknight,
        fontFamily: 'Poppins',
      );

  static get title => themeData.textTheme.titleMedium!.copyWith(
        fontSize: Window.getFontSize(14),
        fontWeight: FontWeight.normal,
        color: lightModeColors.darknight,
        fontFamily: 'Poppins',
      );

  static get subTitle => themeData.textTheme.titleMedium!.copyWith(
        fontSize: Window.getFontSize(12),
        fontWeight: FontWeight.w400,
        color: lightModeColors.neutral600,
        fontFamily: 'Poppins',
        letterSpacing: 0,
      );

  static get highlightSuccess =>
      themeData.textTheme.bodyLarge!.appFontFamily.copyWith(
        color: lightModeColors.green500,
        fontSize: Window.getFontSize(18),
        fontWeight: FontWeight.w500,
      );

  static get highlightError => highlightSuccess.copyWith(
        color: lightModeColors.red500,
        fontWeight: FontWeight.w500,
      );

  static get headlineText =>
      themeData.textTheme.bodyLarge!.appFontFamily.copyWith(
        color: lightModeColors.darknight,
        fontSize: Window.getFontSize(16),
        fontWeight: FontWeight.normal,
      );

  static get titleLarge =>
      themeData.textTheme.bodyLarge!.appFontFamily.copyWith(
        color: lightModeColors.darknight,
        fontSize: Window.getFontSize(20),
        fontWeight: FontWeight.bold,
      );
}

extension on TextStyle {
  TextStyle get appFontFamily {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}

extension on TextStyle {
  TextStyle get madani {
    return copyWith(
        //fontFamily: 'Madani',
        );
  }
}

extension on TextStyle {
  TextStyle get nayuki {
    return copyWith(
        //fontFamily: 'nayuki',
        );
  }
}

import 'package:clean_architecture/core/utils/window.dart';
import 'package:flutter/material.dart';

String _appTheme = "light";

class AppTheme {
  final Map<String, LightThemeColors> _availableThemeColors = {
    'light': LightThemeColors(),
  };

  final Map<String, ColorScheme> _availableColorSchemes = {
    'light': ColorSchemes.lightModeColors,
  };

  void changeTheme(String newTheme) {
    _appTheme = newTheme;
  }

  LightThemeColors _getThemeColors() {
    if (!_availableThemeColors.containsKey(_appTheme)) {
      throw Exception(
        """$_appTheme is not found.
          Make sure you have added this theme class in JSON 
          Try running flutter pub run build_runner""",
      );
    }

    return _availableThemeColors[_appTheme] ?? LightThemeColors();
  }

  ThemeData _getThemeData() {
    if (!_availableColorSchemes.containsKey(_appTheme)) {
      throw Exception("""$_appTheme is not found.
          Make sure you have added this theme class in JSON 
          Try running flutter pub run build_runner""");
    }

    var colorScheme =
        _availableColorSchemes[_appTheme] ?? ColorSchemes.lightModeColors;

    return ThemeData(
      colorScheme: colorScheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: lightModeColors.gray900,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              12,
            ),
          ),
        ),
      ),
      textTheme: TextTheme(
        bodyMedium: TextStyle(
          color: lightModeColors.darknight,
          fontSize: Window.getFontSize(15),
          // //fontFamily: 'Inter',
          fontWeight: FontWeight.w200,
        ),
        bodySmall: TextStyle(
          color: lightModeColors.darknight,
          fontSize: Window.getFontSize(
            12,
          ),
          //fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        bodyLarge: TextStyle(
          color: lightModeColors.darknight,
          fontSize: Window.getFontSize(
            16,
          ),
          //fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        displayLarge: TextStyle(
          color: lightModeColors.darknight,
          fontSize: Window.getFontSize(
            62,
          ),
          //fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: lightModeColors.darknight,
          fontSize: Window.getFontSize(
            14,
          ),
          //fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        labelLarge: TextStyle(
          color: lightModeColors.darknight,
          fontSize: Window.getFontSize(
            12,
          ),
          //fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        headlineLarge: TextStyle(
          color: lightModeColors.darknight,
          fontSize: Window.getFontSize(
            32,
          ),
          //fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        headlineMedium: TextStyle(
          color: lightModeColors.darknight,
          fontSize: Window.getFontSize(
            28,
          ),
          //fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          color: lightModeColors.darknight,
          fontSize: Window.getFontSize(
            18,
          ),
          //fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: lightModeColors.darknight,
          fontSize: Window.getFontSize(
            20,
          ),
          //fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        headlineSmall: TextStyle(
          color: lightModeColors.darknight,
          fontSize: Window.getFontSize(
            24,
          ),
          //fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
      ),
      visualDensity: VisualDensity.standard,
    );
  }

  LightThemeColors lightThemeColors() => _getThemeColors();

  ThemeData themeData() => _getThemeData();
}

class ColorSchemes {
  static const lightModeColors = ColorScheme.light(
    onPrimary: Color(0xFF2D3142),
    shadow: Color(0XFF2D3142),
    onPrimaryContainer: Color(0XFF0B0B09),
    onTertiary: Color(0XFF0B0B09),
    scrim: Color(0XFF2759D2),
    primaryContainer: Color(0XFF2759D2),
    tertiaryContainer: Color(0XFF111827),
    secondaryContainer: Color(0XFF111827),
    error: Color(0XFF2D3142),
    onErrorContainer: Color(0XFF191B1F),
    outline: Color(0XFF2D3142),
    onSurfaceVariant: Color(0XFF9C9C9C),
    outlineVariant: Color(0XFF2759D2),
    errorContainer: Color(0XFFD8AFB8),
    onSurface: Color(0XFF0B0B09),
    onError: Color(0X99FFFFFF),
    surface: Color(0XFF2759D2),
    onInverseSurface: Color(0X99FFFFFF),
    onSecondaryContainer: Color(0XFF9C9C9C),
    tertiary: Color(0XFF2759D2),
    surfaceTint: Color(0XFF2D3142),
    onTertiaryContainer: Color(0XFF9C9C9C),
    // surfaceContainerHighest: Color(0XFF111827),
    inversePrimary: Color(0XFF2759D2),
    secondary: Color(0XFF2759D2),
    inverseSurface: Color(0XFF2D3142),
    onSecondary: Color(0XFF0B0B09),
    primary: Color(0XFFFFFFFF),
  );
}

class LightThemeColors {
  Color get antiFlashWhite => const Color(0xFFF3F4F6);
  Color get warning => const Color(0XFFF39C11);
  Color get error => const Color(0XFFE84c3d);
  Color get success => const Color(0XFF18BB9C);
  Color get info => const Color(0XFF4D7DFF);
  Color get redShade => const Color(0xFFFFCACA);
  Color get pinkShade => const Color(0xFFFFC7C2);

  Color get onPrimary => const Color(0XFF3B1F83);
  Color get primaryVariant => const Color(0XFF2759D2);
  Color get pink350 => const Color(0XFFF6D0EF);
  Color get green350 => const Color(0XFFD0E6C2);
  Color get secondaryVariant => const Color(0XFF111827);
  Color get pink300 => const Color(0XFFFF6199);
  Color get cyan50 => const Color(0XFFDEFDFC);
  Color get gray600 => const Color(0XFF757286);
  Color get blueGray300 => const Color(0XFF9C9DB9);
  Color get lime50 => const Color(0XFFF9F3EA);
  Color get blue100 => const Color(0XFFB5D9FA);
  Color get lightGreen100 => const Color(0XFFD3F6D9);
  Color get gray500 => const Color(0XFF525252);
  // Color get grey700 => const Color(0xFF6C6C6C);
  Color get black900 => const Color(0XFF0B0B09);
  Color get blue5001 => const Color(0XFFE9F5F7);
  Color get blueA700 => const Color(0XFF216CFF);
  Color get gray20001 => const Color(0XFFE9E9E9);
  Color get gray100 => const Color(0XFFEFFAFC);
  Color get indigo30019 => const Color(0X196F88D1);
  Color get blueGray10001 => const Color(0XFFD6D6D7);
  Color get blueGray50001 => const Color(0XFF707790);
  Color get gray9001e => const Color(0X1E100C40);
  Color get gray50 => const Color(0XFFF5F9FE);
  Color get indigo50 => const Color(0XFFDFE0FC);
  Color get gray10001 => const Color(0XFFF4F6FA);
  Color get redA200 => const Color(0XFFFF6060);
  Color get greenA400 => const Color(0XFF03BE7B);
  Color get green500 => const Color(0XFF4AA879);
  Color get gray400 => const Color(0XFFC6C6C6);
  Color get deepOrange900 => const Color(0XFFBE4703);
  Color get blue5003 => const Color(0XFFE1E9FF);
  Color get orange5002 => const Color(0XFFFDEFDE);
  Color get gray90038 => const Color(0X38100C40);
  Color get purple5002 => const Color(0XFFF5E5FA);
  Color get blueGray900 => const Color(0XFF31383A);
  Color get orange50 => const Color(0XFFFDF5DE);
  Color get blue50 => const Color(0XFFDBEBFF);
  Color get gray90001 => const Color(0XFF111827);
  Color get teal50 => const Color(0XFFE0F4F3);
  Color get blue10001 => const Color(0XFFC9D9FB);
  Color get gray200 => const Color(0XFFEEEEEE);
  Color get blueGray100 => const Color(0XFFD9D9D9);
  Color get blueGray500 => const Color(0XFF717890);
  Color get orange5001 => const Color(0XFFFFECD0);
  Color get gray900 => const Color(0XFF100D40);
  Color get darkGrey600 => const Color(0xFF404040);
  Color get darkGrey => const Color(0xFF393838);
  Color get redA700 => const Color(0XFFED0006);
  Color get red500 => const Color(0XFFF15223);
  Color get red600 => const Color(0xFFFB5724);
  Color get red500Opac => const Color(0x40F15323);
  Color get cyan5001 => const Color(0XFFD8F6FD);
  Color get purple50 => const Color(0XFFF2D1EF);
  Color get pink50 => const Color(0XFFFDDEE7);
  Color get blueGray600 => const Color(0XFF4C5980);
  Color get blue5002 => const Color(0XFFE2EEFC);
  Color get blueGray10002 => const Color(0XFFD6D9E0);
  Color get blue700 => const Color(0XFF0A16FF);
  Color get blue750 => const Color(0XFF0A16FF);
  Color get blue800 => const Color(0XFF2759D2);
  Color get purple350 => const Color(0xFFC9D5FF);
  Color get whiteA700 => const Color(0XFFFFFFFF);
  Color get greyedWhite => const Color.fromRGBO(147, 158, 158, 0);

  Color get blue5004 => const Color(0XFFEAF4F9);
  Color get purple5001 => const Color(0XFFF9EAF5);
  Color get purpleA200 => const Color(0XFFFF1FF1);
  Color get black => const Color(0xFF000000);
  Color get blackBg => const Color(0xFF121212);
  Color get neutral400 => const Color(0xFFBFBFBF);
  Color get neutral500 => const Color(0xFFAEAEAE);

  Color get neutral600 => const Color(0xFF575757);
  // Color get primary500 => const Color(0xFF4D72F5);
  Color get transparent => Colors.transparent;
  // Color get primary600 => const Color(0xFF365FF1);
  // Color get primary700 => const Color(0xFF0D4BDA);
  Color get primary100 => const Color(0xFFEAEEFF);
  Color get lightBlue => const Color(0xFFAEE6FF);
  Color get green100 => const Color(0xFFECF6F1);
  Color get pink1100 => const Color(0xFFFFC9C9);
  Color get green200 => const Color(0xFFE5F6D0);
  Color get blue900 => const Color(0xFFC9EBFF);
  Color get purple900 => const Color(0xFFDAF8B7);
  Color get blue1100 => const Color(0xFF94C7FC);
  Color get gray1100 => const Color(0xFF3C3C43);
  Color get gray1200 => const Color(0xFF7F7F7F);
  Color get yellow300 => const Color(0xFFFFF689);
  Color get orange => const Color(0xFFFF844B);
  Color get silver => const Color(0xFFF5F5F5);
  Color get orange700 => const Color(0xFFFF7141);
  Color get orange100 => const Color(0xFFFFE6E1);
  Color get orange200 => const Color(0xFFFFF4E1);
  Color get orange350 => const Color(0xFFC9D5FF);
  Color get yellow200 => const Color(0xFFFFF689);
  Color get gray10 => const Color(0xFFCDCDCD);
  Color get purple100 => const Color(0xFFDEE4FF);
  Color get yellow500 => const Color(0xFFFDFF96);
  Color get orange800 => const Color(0xFFFFA66B);
  Color get orange300 => const Color(0xFFFFDECA);
  Color get yellow100 => const Color(0xffFFFAC2);
  Color get sliverGrey => const Color(0xFFF6F6F6);
  Color get greenCream => const Color(0xFFE6F9DA);
  Color get gray300 => const Color(0xffF4F3FA);
  Color get gray700 => const Color(0xFF4F4C4C);
  Color get lightGrey => const Color(0xffF4F5F5);
  Color get borderGrey => const Color(0xFFB7B7B7);
  Color get gray800 => const Color(0xffF5F5F5);
  Color get blue200 => const Color(0xffC9EBFF);
  Color get bone => const Color(0xffECFEF6);

  // theme
  Color get forest => const Color(0xFF144618);
  Color get sun => const Color(0xFFfff7d0);
  Color get wood => const Color(0xFFA8DAFF);

  Color get freshmintlighttwo => const Color(0xFFE7FFB3);
  // Color get sahara => const Color(0xFFfff5ea);

  Color get sahara => const Color(0xFFEAE0D7);
  Color get creamewhite => const Color(0xFFFFE4CC);
  Color get snowwhite => const Color(0xFFfffffC);
  Color get purepurple => const Color(0xFFdab9f3);
  Color get purepurplelight => const Color(0xFFf6ebff);
  Color get iceorange => const Color(0xFFf8c676);
  Color get iceorangelight => const Color(0xFFffefd3);
  Color get dawnred => const Color(0xFFf6b19d);
  Color get dawnredlight => const Color(0xFFffe8e1);
  Color get cloud => const Color(0xFFeeeeee);
  Color get new_ => const Color(0xFFf5f5f5);
  Color get female => const Color(0xFFFF37C6);
  Color get titleGrey => const Color(0xFF767779);
  Color get appBarPurple => const Color(0xABEAE9F8);

  Color get darknight => const Color(0xFF000303);
  Color get darknightlight => const Color(0xFF3D3D3D);

  Color get lavender_ => const Color(0xFF5A45FE);

/*
  >>> Primary Colors
*/

  Color get freshgreenOld => const Color(0xFF40F29A);
  Color get freshgreenlightOld => const Color(0xFFA8ffD4);

  Color get accentgreen => const Color(0xFF4DED9D);
  Color get accentgreenlight => const Color(0x4580FFC0);

  Color get freshgreen => const Color(0xFF40F29A);
  Color get freshgreenlight => const Color(0xFFA8ffD4);

  // Color get freshGreenNew => const Color(0xFF95fbec);
  // Color get freshgreenlightNew => const Color(0xFFe9eff6);
  Color get bacgroundGreen => const Color(0xFFeafffc);
  Color get primaryGreen => const Color(0xFF9FE875);
  Color get primaryGreen200 => const Color(0xFFB2ED8D);
  Color get primaryGreen100 => const Color(0xFFC5F1A9);
  Color get primaryGreen50 => const Color(0xffD9F6C6);
  Color get primaryGreen25 => const Color(0xffECFAE2);
  Color get primaryGreen0 => const Color(0xffF5FDF1);

  Color get darkBag => const Color(0xFF011a1a);
  Color get accentGreen => const Color(0xFF033333);

  /// secondary green 2025
  Color get secondaryGreen0 => const Color(0xFFE8EBE6);
  Color get secondaryGreen25 => const Color(0xFFD0D6CC);
  Color get secondaryGreen50 => const Color(0xFFA2AD99);
  Color get secondaryGreen100 => const Color(0xFF738566);
  Color get secondaryGreen200 => const Color(0xFF455C33);
  Color get secondaryGreen => const Color(0xFF163301);
/*
  <<< Primary Colors
*/

/*
  >>> Seccondary Colors
*/

  /// blue
  Color get neoblue => const Color(0xFF2456ff);
  Color get galaxyblue => const Color(0xFF2456FF);
  // Color get galaxyblue => const Color(0xFF11514C);
  Color get galaxybluelight => const Color(0xFFe7f0ff);
  Color get newblue => const Color(0xFFA8DAFF);
  Color get cardbluelight => const Color(0xffCBE8FF);
  Color get cardblue => const Color(0xffA8FFD4);

  /// grey
  Color get grey25 => const Color(0xFFFAFAFA);
  Color get grey50 => const Color(0xFFF5F5F5);
  Color get grey100 => const Color(0xFFE5E5E5);
  Color get grey200 => const Color(0xFFD4D4D4);
  Color get grey300 => const Color(0xFFA3A3A3);
  Color get grey400 => const Color(0xFF737373);
  Color get grey500 => const Color(0xFF525252);
  Color get grey600 => const Color(0xFF404040);
  Color get grey700 => const Color(0xFF171717);
  Color get grey800 => const Color(0xFF0A0A0A);
  Color get grey900 => const Color(0xFF262626);

  /// alert success
  Color get alertSuccess0 => const Color(0xffEFFEFA);
  Color get alertSuccess25 => const Color(0xffDDF2EE);
  Color get alertSuccess50 => const Color(0xff9DE0D3);
  Color get alertSuccess100 => const Color(0xff40C4AA);
  Color get alertSuccess200 => const Color(0xff28806F);
  Color get alertSuccess300 => const Color(0xff184E44);

  /// alert error
  Color get alertError300 => const Color(0xff710E21);
  Color get alertError200 => const Color(0xff96132C);
  Color get alertError100 => const Color(0xffDF1C41);
  Color get alertError50 => const Color(0xffED8296);
  Color get alertError25 => const Color(0xffFADBE1);

  /// alert warning
  Color get alertWarning300 => const Color(0xff5C3D1F);
  Color get alertWarning200 => const Color(0xff966422);
  Color get alertWarning100 => const Color(0xffFFBE4C);
  Color get alertWarning50 => const Color(0xffFCDA83);

  /// additional/offer
  Color get additionalBlue300 => const Color(0xff0C4E6E);
  Color get additionalBlue200 => const Color(0xff116B97);
  Color get additionalBlue100 => const Color(0xff33CFFF);
  Color get additionalBlue50 => const Color(0xff7EDCF1);
  Color get additionalBlue25 => const Color(0xffD1F0F9);
  Color get additionalBlue0 => const Color(0xffEFFBFF);

  Color get backgroundGradient => const Color(0xffEFFBFF);

/*
  >>> Secondary Colors
*/

/* 
   >>>>>>Transaction Colors
*/

  Color get failed => Colors.red;
  Color get successGreen => Colors.green;
  Color get pendingOrange => const Color(0xFFE38039);

/* 
   >>>>>>Transaction Colors
*/
}

LightThemeColors get lightModeColors => AppTheme().lightThemeColors();
ThemeData get themeData => AppTheme().themeData();

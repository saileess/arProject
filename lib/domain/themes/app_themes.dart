import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

enum AppTheme {
  dark,
  light
}

final appThemeData = {
  AppTheme.dark: ThemeData(
    primaryColor: const Color(0xFF7C3AED),
    scaffoldBackgroundColor: const Color(0xFF16171D),
    colorScheme: ThemeData().colorScheme.copyWith(
          primary: const Color(0xFFC1CAFF),
          //secondary: const Color(0xff536DFE),
          secondary: const Color(0xFF7C8FFB),
          tertiary: const Color(0xFFFFFFFF),
          background: const Color(0xFF16171D),
          onSecondary: const Color(0xFF969696),
          onTertiary: const Color(0xFF000000),
          onPrimaryContainer: const Color(0xFFD1EAFE),
          onSecondaryContainer: const Color(0xFF99B8FC),
          onBackground: const Color(0xff222222),
          onError: const Color(0xffDD4436),
          onSurface: const Color(0xffF5F3FF),
          onTertiaryContainer: const Color(0xff407BFF),
          onSurfaceVariant: const Color(0xffA1A1A1),
        ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontWeight: FontWeight.w500,
        color: Color(0xFFF6F2E4),
      ),
      bodyMedium: TextStyle(
        fontWeight: FontWeight.w500,
        color: Color(0xFFF6F2E4),
      ),
      bodySmall: TextStyle(
        fontWeight: FontWeight.w500,
        color: Color(0xFFF6F2E4),
      ),
    ),
  ),


AppTheme.light: ThemeData(
    primaryColor: const Color(0xFF4DB9E1),
    scaffoldBackgroundColor: const Color(0xff666666),
    colorScheme: ThemeData().colorScheme.copyWith(
          primary: const Color(0xFFDDF0F7),
          secondary: const Color(0xff666666),
          tertiary: const Color(0xff313D54),
          background: const Color(0xFFF6F2E4),
          onSecondary: const Color(0xFF969696),
          onTertiary: const Color(0xFF4DB9E1),
          onPrimaryContainer: const Color(0xFFFFFFFF),
          onSecondaryContainer: const Color(0xFF646464),
          onBackground: const Color(0xff222222),
          onError: const Color(0xffDD4436),
          onSurface: const Color(0xffF5F3FF),
          onTertiaryContainer: const Color(0xff272727),
          onSurfaceVariant: const Color(0xffA1A1A1),
        ),
    textTheme:  TextTheme(
      bodyLarge: TextStyle(
        fontWeight: FontWeight.w500,
        color: const Color(0xFFF6F2E4),
        fontSize: 20.sp
      ),
      bodyMedium: TextStyle(
        fontWeight: FontWeight.w500,
        color: const Color(0xFFF6F2E4),
        fontSize: 12.sp
      ),
      bodySmall: TextStyle(
        fontWeight: FontWeight.w500,
        color: const Color(0xFFF6F2E4),
        fontSize: 8.sp
      ),
    ),
  )
};



import 'package:flutter/material.dart';
import 'package:thriftmee/app/shared/theme/color.dart';

import 'font.dart';

ThemeData theme = ThemeData(
  scaffoldBackgroundColor: whiteColor,
  appBarTheme: const AppBarTheme(
      backgroundColor: whiteColor,
      elevation: 0,
      foregroundColor: font,
      centerTitle: false),
  indicatorColor: primary,
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: primary,
    secondary: accentColor,
    error: errorColor,
  ),
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: placeholder.copyWith(
      color: greyColor,
    ),
    border: InputBorder.none,
    outlineBorder: const BorderSide(
      color: greyColor,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: greyColor,
      ),
    ),
    focusColor: font,
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: font,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: greyColor,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: errorColor,
      ),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      disabledBackgroundColor: inactiveColorButton,
      disabledForegroundColor: whiteColor,
      backgroundColor: primary,
      foregroundColor: whiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  ),
);

ThemeData themeDark = ThemeData(
  scaffoldBackgroundColor: black,
  indicatorColor: primary,
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: primary,
    secondary: accentColor,
    error: errorColor,
  ),
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: placeholder.copyWith(color: whiteColor),
    border: InputBorder.none,
    outlineBorder: const BorderSide(
      color: greyColor,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: font,
        width: 2,
      ),
    ),
    focusColor: font,
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: font,
        width: 2,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: errorColor,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: errorColor,
      ),
    ),
  ),
);

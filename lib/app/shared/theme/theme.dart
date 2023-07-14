import 'package:flutter/material.dart';
import 'package:thriftmee/app/shared/theme/color.dart';

import 'font.dart';

ThemeData theme = ThemeData(
  scaffoldBackgroundColor: whiteColor,
  indicatorColor: primary,
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: primary,
    secondary: accentColor,
    error: errorColor,
  ),
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: placeholder.copyWith(color: greyColor),
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
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: greyColor,
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
        color: greyColor,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: greyColor,
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
);

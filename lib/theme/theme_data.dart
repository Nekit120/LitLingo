import 'package:flutter/material.dart';

import 'custom_text_style.dart';
import 'dark_theme_colors.dart';

final theme = ThemeData.dark().copyWith(
  popupMenuTheme: PopupMenuThemeData(
    color: DarkThemeColors.background,
    textStyle: CustomTextStyle.body14Regular.copyWith(
      color: DarkThemeColors.textColorLight,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
  ),
  filledButtonTheme: FilledButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
        if (states.contains(WidgetState.disabled)) {
          return DarkThemeColors.generalPrimaryDisabled;
        }
        return DarkThemeColors.generalPrimary;
      }),
    ),
  ),
  scaffoldBackgroundColor: DarkThemeColors.background,
  appBarTheme: const AppBarTheme(
    backgroundColor: DarkThemeColors.background,
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: DarkThemeColors.generalPrimary,
  ),
);

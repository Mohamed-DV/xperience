import 'package:flutter/material.dart';

// local imports
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/config/theme/font_family.dart';

ThemeData theme = ThemeData(
  primarySwatch: Colors.grey,
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: AppColors.black,
    selectionColor: AppColors.primary.withOpacity(0.3),
    selectionHandleColor: AppColors.primary,
  ),
  scaffoldBackgroundColor: AppColors.backgroundWhite,
  colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.white,
    foregroundColor: AppColors.black,
    elevation: 0,
    iconTheme: IconThemeData(color: AppColors.black),
    centerTitle: true,
    surfaceTintColor: Colors.transparent,
  ),
  fontFamily: FontFamily.primary,
);

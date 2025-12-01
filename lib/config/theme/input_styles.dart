import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/config/theme/font_size.dart';
import 'package:spots_xplorer_app/config/theme/spacing.dart';
import 'package:flutter/material.dart';
// local imports

class InputStyles {
  static InputDecoration primaryInputDecoration({
    required String hintText,
    bool outline = true,
    Widget? prefixIcon,
    Widget? suffix,
    double? paddingLeft,
    double? paddingRight,
    double? paddingTop,
    double? paddingBottom,
  }) {
    return InputDecoration(
      errorMaxLines: 2,
      hintText: hintText,
      hintStyle: const TextStyle(
        fontSize: FontSize.base,
        fontWeight: FontWeight.w500,
        color: AppColors.greyDark,
      ),
      contentPadding: EdgeInsets.only(
        left: paddingLeft ?? Spacing.lg,
        right: paddingRight ?? Spacing.lg,
        top: paddingTop ?? Spacing.lg,
        bottom: paddingBottom ?? Spacing.lg,
      ),
      filled: true,
      fillColor: AppColors.greyLight,
      border: const OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      prefixIcon: prefixIcon,
      suffixIcon: suffix,
      focusedBorder:
          outline
              ? const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.black, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(6)),
              )
              : const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(6)),
              ),
      errorStyle: const TextStyle(
        fontSize: FontSize.sm,
        fontWeight: FontWeight.w500,
        color: AppColors.deepDanger,
      ),
    );
  }
}

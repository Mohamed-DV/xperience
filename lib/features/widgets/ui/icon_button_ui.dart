import 'package:flutter/material.dart';
// local imports
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/config/theme/font_size.dart';

class IconButtonUI extends StatelessWidget {
  const IconButtonUI({
    super.key,
    this.onPressed,
    required this.icon,
    this.iconSize = FontSize.xl2,
    this.color = AppColors.black,
    this.iconColor = AppColors.black,
    this.padding = const EdgeInsets.all(4),
    this.backgroundColor = Colors.transparent,
    this.haveBorder = true,
    this.borderRadius = 999,
    this.haveSplash = true,
  });

  final VoidCallback? onPressed;
  final IconData icon;
  final double iconSize;
  final Color color;
  final Color? iconColor;
  final Color backgroundColor;
  final EdgeInsets padding;
  final bool haveBorder;
  final double borderRadius;
  final bool haveSplash;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(icon, color: iconColor),
      style: ButtonStyle(
        splashFactory:
            haveSplash ? InkRipple.splashFactory : NoSplash.splashFactory,
        backgroundColor: WidgetStateProperty.all(backgroundColor),
        padding: WidgetStateProperty.all(padding),
        minimumSize: WidgetStateProperty.all(Size.zero),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        side: haveBorder
            ? WidgetStateProperty.all(
                const BorderSide(
                  color: AppColors.grey,
                  width: 1,
                ),
              )
            : WidgetStateProperty.all(BorderSide.none),
      ),
      padding: padding,
      iconSize: iconSize,
      color: color,
    );
  }
}

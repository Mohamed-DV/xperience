import 'package:flutter/material.dart';
import 'package:spots_xplorer_app/config/theme/app_icons.dart';
import 'package:spots_xplorer_app/config/theme/app_radius.dart';
// local imports
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/config/theme/font_size.dart';
import 'package:spots_xplorer_app/config/theme/spacing.dart';
import 'package:spots_xplorer_app/features/widgets/ui/icon_button_ui.dart';

class ModalSheetWrapper extends StatelessWidget {
  const ModalSheetWrapper({
    super.key,
    required this.child,
    this.height,
    this.title,
    this.useKeyboardPadding = true,
  });

  final Widget child;
  final double? height;
  final String? title;
  final bool useKeyboardPadding;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: useKeyboardPadding
            ? EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom)
            : null,
        child: Wrap(
          children: [
            Container(
              height: height ?? height,
              padding: const EdgeInsets.symmetric(
                vertical: Spacing.base,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppRadius.base),
                  topRight: Radius.circular(AppRadius.base),
                ),
              ),
              width: double.infinity,
              child: height == null
                  ? Wrap(
                      children: [
                        if (title != null) SheetHeader(title: title!),
                        child,
                      ],
                    )
                  : Column(
                      children: [
                        if (title != null) SheetHeader(title: title!),
                        Expanded(
                          child: child,
                        ),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class SheetHeader extends StatelessWidget {
  const SheetHeader({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Spacing.base,
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: FontSize.lg,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              IconButtonUI(
                icon: AppIcons.close_line,
                padding: const EdgeInsets.all(Spacing.sm),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
        const SizedBox(height: Spacing.base),
        const Divider(
          color: AppColors.greyLight,
          height: 1,
          thickness: 1,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';

class ImageCard extends StatefulWidget {
  final String url;
  final int selectedIndex;
  final int index;

  final VoidCallback onPressed;
  const ImageCard({
    super.key,
    required this.url,
    required this.selectedIndex,
    required this.index,
    required this.onPressed,
  });

  @override
  State<ImageCard> createState() => _ImageCardState();
}

class _ImageCardState extends State<ImageCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget.onPressed(),
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color:
                widget.selectedIndex == widget.index
                    ? AppColors.primary
                    : AppColors.white,
            width: 1.5,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(widget.url, fit: BoxFit.cover),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  final String readMoreText;
  final TextStyle? style;
  final TextStyle? linkStyle;
  final int trimLines;

  const ExpandableText({
    super.key,
    required this.text,
    this.readMoreText = 'Plus d\'infos',
    this.style,
    this.linkStyle,
    this.trimLines = 3,
  });

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool _expanded = false;
  bool _isOverflowing = false;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Create a TextPainter to check if text overflows
        final span = TextSpan(text: widget.text, style: widget.style);
        final tp = TextPainter(
          text: span,
          maxLines: widget.trimLines,
          textDirection: TextDirection.ltr,
        )..layout(maxWidth: constraints.maxWidth);
        _isOverflowing = tp.didExceedMaxLines;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.text,
              style: widget.style,
              maxLines: _expanded ? null : widget.trimLines,
              overflow:
                  _expanded ? TextOverflow.visible : TextOverflow.ellipsis,
            ),
            if (_isOverflowing && !_expanded)
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () => setState(() => _expanded = true),
                  child: Text(
                    widget.readMoreText,
                    style:
                        widget.linkStyle ??
                        const TextStyle(
                          color: Color(
                            0xFF65002B,
                          ), // close to what’s in the image
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// local imports
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/config/theme/app_icons.dart';
import 'package:spots_xplorer_app/config/theme/font_size.dart';
import 'package:spots_xplorer_app/config/theme/input_styles.dart';
import 'package:spots_xplorer_app/config/theme/spacing.dart';
import 'package:spots_xplorer_app/core/services/login_repository.dart';

enum TextFieldVariant { primary }

class TextFieldUI extends ConsumerStatefulWidget {
  const TextFieldUI({
    super.key,
    required this.hintText,
    this.isInitText = false,
    this.controller,
    this.focusNode,
    this.prefix,
    this.suffix,
    this.variant = TextFieldVariant.primary,
    this.onFocus,
    this.onBlur,
    this.useClearButton = false,
    this.autoFocus = false,
    this.defaultValue,
    this.enabled = true,
    this.readOnly = false,
    this.outline = true,
    this.maxLines = 1,
    this.paddingLeft,
    this.paddingRight,
    this.keyBoardType,
    this.isPassword = false,
    this.onChanged,
    this.onTap,
    this.style,
    this.maxLength = 100,
    this.maxLengthWords,
    this.validator,
  });

  final String hintText;
  final bool isInitText;
  final TextFieldVariant variant;
  final Widget? prefix;
  final Widget? suffix;
  final void Function()? onFocus;
  final void Function()? onBlur;
  final bool useClearButton;
  final bool autoFocus;
  final String? defaultValue;
  final bool enabled;
  final bool readOnly;
  final bool outline;
  final int maxLines;
  final double? paddingLeft;
  final double? paddingRight;
  final TextInputType? keyBoardType;
  final bool isPassword;
  final void Function(String value)? onChanged;
  final void Function()? onTap;
  final String? Function(String? value)? validator;
  final TextEditingController? controller;
  final int? maxLength;
  final int? maxLengthWords;
  final FocusNode? focusNode;
  final TextStyle? style;

  @override
  ConsumerState<TextFieldUI> createState() => _TextFieldUIState();
}

class _TextFieldUIState extends ConsumerState<TextFieldUI> {
  late FocusNode _focusNode;
  late TextEditingController _controller;
  bool _isClearVisible = false;
  bool _isPasswordVisible = false;
  Color _textColor = AppColors.grey;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _controller = widget.controller ?? TextEditingController();
    _focusNode.addListener(_handleFocusChange);
    _controller.addListener(() {
      setState(() {
        _textColor = _focusNode.hasFocus ? AppColors.black : AppColors.grey;
        _isClearVisible = _controller.text.isNotEmpty;
      });
    });
    if (widget.defaultValue != null) {
      _controller.text = widget.defaultValue!;
    }
  }

  @override
  void dispose() {
    _focusNode.removeListener(_handleFocusChange);
    _focusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  void _handleFocusChange() {
    if (_focusNode.hasFocus) {
      if (widget.onFocus != null) {
        widget.onFocus!();
      }
    } else {
      if (widget.onBlur != null) {
        widget.onBlur!();
      }
    }
  }

  get _inputStyle {
    switch (widget.variant) {
      case TextFieldVariant.primary:
        return InputStyles.primaryInputDecoration(
          paddingTop: 10,
          paddingBottom: 10,
          outline: widget.outline,
          hintText: widget.hintText,
          paddingRight: widget.paddingRight,
          paddingLeft: widget.prefix != null ? 46 : widget.paddingLeft,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextFormField(
          readOnly: widget.readOnly,
          style: widget.style,
          keyboardType: widget.keyBoardType,
          maxLines: widget.maxLines,
          enabled: widget.enabled,
          autofocus: widget.autoFocus,
          focusNode: widget.focusNode ?? _focusNode,
          decoration: _inputStyle,
          controller: _controller,
          obscureText: widget.isPassword ? !_isPasswordVisible : false,
          maxLength: widget.maxLengthWords,
          buildCounter: (
            context, {
            required currentLength,
            required isFocused,
            required maxLength,
          }) {
            return null;
          },
          onChanged: (value) {
            if (widget.onChanged != null) {
              widget.onChanged!(value);
            }
            if (value.split(' ').length > widget.maxLength!) {
              _controller.text = value
                  .split(' ')
                  .take(widget.maxLength!)
                  .join(' ');
              _controller.selection = TextSelection.fromPosition(
                TextPosition(offset: _controller.text.length),
              );
            }
          },
          onTap: widget.onTap,

          validator:
              widget.validator ??
              (value) {
                if (value != null) {
                  switch (widget.keyBoardType) {
                    case TextInputType.name:
                      return ref
                          .read(loginRepositoryProvider.notifier)
                          .validateName(value);
                    case TextInputType.emailAddress:
                      return ref
                          .read(loginRepositoryProvider.notifier)
                          .validateEmail(value);
                    case TextInputType.visiblePassword:
                      return ref
                          .read(loginRepositoryProvider.notifier)
                          .validatePassword(value);
                    case TextInputType.phone:
                      return ref
                          .read(loginRepositoryProvider.notifier)
                          .validatePhone(value);
                  }
                }
                return null;
              },
        ),
        if (widget.prefix != null) ...[
          Positioned(
            left: Spacing.md,
            top: Spacing.lg + 1,
            child: widget.prefix!,
          ),
        ],
        if (widget.suffix != null) ...[
          Positioned(
            right: Spacing.md,
            top: Spacing.lg + 1,
            child: widget.suffix!,
          ),
        ],
        // length > 0 we clear the text field
        if (_isClearVisible &&
            _focusNode.hasFocus &&
            widget.useClearButton) ...[
          Positioned(
            right: Spacing.lg,
            top: Spacing.lg,
            child: _buildClearButton(),
          ),
        ],

        // password visibility
        if (widget.isPassword) ...[
          Positioned(
            right: Spacing.lg,
            top: Spacing.lg,
            child: Center(child: _buildPasswordVisibility()),
          ),
        ],
      ],
    );
  }

  Widget _buildPasswordVisibility() {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isPasswordVisible = !_isPasswordVisible;
        });
      },
      child: Icon(
        _isPasswordVisible ? AppIcons.eyeFill : AppIcons.eyeCloseFill,
        color: AppColors.blackSecondary,
        size: FontSize.xl,
      ),
    );
  }

  Widget _buildClearButton() {
    return GestureDetector(
      onTap: () {
        _controller.clear();
        setState(() {
          _isClearVisible = false;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          color: AppColors.blackSecondary,
          borderRadius: BorderRadius.circular(50),
        ),
        child: const Icon(
          AppIcons.close_line,
          color: AppColors.white,
          size: FontSize.lg,
        ),
      ),
    );
  }
}

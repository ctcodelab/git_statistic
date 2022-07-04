import 'package:flutter/material.dart';
import 'package:iqvia_kpi/core/constants/constants.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({
    required this.hintText,
    required this.onChanged,
    this.suffixIcon,
    this.suffixIconConstraints,
    this.obscureText,
    this.autocorrect,
    Key? key,
  }) : super(key: key);

  final String hintText;
  final Function(String) onChanged;
  final Widget? suffixIcon;
  final BoxConstraints? suffixIconConstraints;
  final bool? obscureText;
  final bool? autocorrect;

  @override
  State<StatefulWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      padding: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.shimmerBase,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(2),
      ),
      child: TextField(
        obscureText: widget.obscureText ?? false,
        autocorrect: widget.autocorrect ?? false,
        style: AppTextStyle.subtitle1,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: AppTextStyle.subtitle1.copyWith(
            color: AppColors.text600,
          ),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
          suffixIcon: widget.suffixIcon,
          suffixIconConstraints: widget.suffixIconConstraints ??
              const BoxConstraints(
                maxHeight: 24,
                maxWidth: 24,
              ),
        ),
        onChanged: widget.onChanged,
      ),
    );
  }
}

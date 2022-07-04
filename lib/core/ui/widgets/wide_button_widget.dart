import 'package:flutter/material.dart';
import 'package:iqvia_kpi/core/constants/constants.dart';

class WideButtonWidget extends StatelessWidget {
  const WideButtonWidget({
    required this.text,
    required this.onTap,
    this.margin,
    this.decoration,
    this.showInProgress = false,
    Key? key,
  }) : super(key: key);

  final BoxDecoration? decoration;
  final VoidCallback? onTap;
  final Text text;
  final EdgeInsets? margin;
  final bool showInProgress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: !showInProgress ? onTap : null,
      child: Container(
        constraints: const BoxConstraints(minHeight: 40),
        margin: margin,
        padding: const EdgeInsets.all(8),
        alignment: Alignment.center,
        decoration: decoration,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (showInProgress)
              const SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(
                    AppColors.white,
                  ),
                  strokeWidth: 2,
                ),
              ),
            if (!showInProgress) Flexible(child: text),
          ],
        ),
      ),
    );
  }
}

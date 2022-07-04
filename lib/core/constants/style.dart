import 'package:flutter/material.dart';
import 'package:iqvia_kpi/core/constants/constants.dart';

class Style {
  Style._();

  static BoxDecoration get activeButtonDecoration => BoxDecoration(
        color: AppColors.blue,
        borderRadius: BorderRadius.circular(23),
      );

  static BoxDecoration get inactiveButtonDecoration => BoxDecoration(
        color: AppColors.background300,
        borderRadius: BorderRadius.circular(23),
      );

  static TextStyle get inactiveButtonTextStyle =>
      AppTextStyle.subtitle1.copyWith(
        color: AppColors.text600,
      );

  static TextStyle get activeButtonTextStyle => AppTextStyle.subtitle1.copyWith(
        color: AppColors.white,
      );
}

import 'package:flutter/material.dart';
import 'package:point_sale_app/src/ui/shared/widgets/text/custom_text_style.dart';
import 'package:point_sale_app/src/utils/app_colors.dart';

class CustomInputs {
  static InputDecoration loginInputDecoration({
    required String hint,
    required String label,
    required IconData icon,
  }) {
    return InputDecoration(
      filled: true,
      fillColor: AppColors.authBackgroundColor,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: AppColors.authBackgroundColor,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: AppColors.primaryColor,
          width: 2,
        ),
      ),
      hintText: hint,
      labelText: label,
      prefixIcon: Icon(icon, color: AppColors.textColor2),
      labelStyle: CustomTextStyle.textStyle(12, AppColors.textColor2, false),
      hintStyle: CustomTextStyle.textStyle(12, AppColors.textColor2, false),
    );
  }
}

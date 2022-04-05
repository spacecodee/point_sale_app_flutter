import 'package:flutter/material.dart';
import 'package:point_sale_app/src/ui/shared/widgets/text/custom_text_style.dart';
import 'package:point_sale_app/src/utils/app_colors.dart';

class LogoApp extends StatelessWidget {
  const LogoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.account_balance_outlined,
          color: AppColors.secondaryColor,
          size: 30,
        ),
        const SizedBox(width: 20),
        Text(
          'SmartPOS',
          style: CustomTextStyle.textStyle(30, AppColors.secondaryColor, true),
        ),
      ],
    );
  }
}

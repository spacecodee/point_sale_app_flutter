import 'package:flutter/material.dart';
import 'package:point_sale_app/src/ui/shared/widgets/text/custom_text_style.dart';
import 'package:point_sale_app/src/utils/app_colors.dart';

class CustomElevatedButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  final Color color;
  final bool isFilled;

  const CustomElevatedButton(
      {Key? key,
      required this.onPressed,
      required this.text,
      this.color = AppColors.primaryColor,
      this.isFilled = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          side: MaterialStateProperty.all(
            BorderSide(color: color),
          ),
          backgroundColor: MaterialStateProperty.all(AppColors.primaryColor),
          elevation: MaterialStateProperty.all(0),
        ),
        onPressed: () => onPressed(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            text,
            style: CustomTextStyle.textStyle(16, AppColors.textColor, true),
          ),
        ),
      ),
    );
  }
}

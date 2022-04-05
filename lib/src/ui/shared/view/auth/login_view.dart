import 'package:flutter/material.dart';
import 'package:point_sale_app/src/ui/shared/widgets/auth/auth_register_with.dart';
import 'package:point_sale_app/src/ui/shared/widgets/buttons/custom_elevated_button.dart';
import 'package:point_sale_app/src/ui/shared/widgets/buttons/link_text.dart';
import 'package:point_sale_app/src/ui/shared/widgets/inputs/custom_inputs.dart';
import 'package:point_sale_app/src/ui/shared/widgets/text/custom_text_style.dart';
import 'package:point_sale_app/src/utils/app_colors.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 500),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome back!",
                style: CustomTextStyle.textStyle(30, AppColors.textColor, true),
              ),
              const SizedBox(height: 10),
              Text(
                "Please sign in to continue",
                style:
                    CustomTextStyle.textStyle(14, AppColors.textColor2, false),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: CustomInputs.loginInputDecoration(
                  hint: 'ID number',
                  label: 'Sales ID number',
                  icon: Icons.account_circle_outlined,
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                obscureText: true,
                decoration: CustomInputs.loginInputDecoration(
                  hint: 'Enter your password',
                  label: 'Password',
                  icon: Icons.lock_outline_rounded,
                ),
              ),
              const SizedBox(height: 20),
              CustomElevatedButton(
                onPressed: () {},
                text: 'Sign in',
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AuthRegisterWith(
                    onGooglePressed: () {},
                    onFacebookPressed: () {},
                  ),
                  const SizedBox(height: 40),
                  const LinkText(text: "Forgot password?"),
                  const SizedBox(height: 20),
                  const LinkText(
                    text: "Don't have an account? go to "
                        "registration",
                    color: AppColors.textColor2,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
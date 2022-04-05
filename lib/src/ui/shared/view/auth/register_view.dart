import 'package:flutter/material.dart';
import 'package:point_sale_app/src/ui/shared/widgets/auth/auth_register_with.dart';
import 'package:point_sale_app/src/ui/shared/widgets/buttons/custom_elevated_button.dart';
import 'package:point_sale_app/src/ui/shared/widgets/buttons/link_text.dart';
import 'package:point_sale_app/src/ui/shared/widgets/inputs/custom_inputs.dart';
import 'package:point_sale_app/src/ui/shared/widgets/text/custom_text_style.dart';
import 'package:point_sale_app/src/utils/app_colors.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 550),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Please sign out to continue",
              style:
                  CustomTextStyle.textStyle(30, AppColors.textColor, true),
            ),
            const SizedBox(height: 40),
            TextFormField(
              decoration: CustomInputs.loginInputDecoration(
                hint: 'Pepito',
                label: 'Your First name',
                icon: Icons.account_circle_outlined,
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: CustomInputs.loginInputDecoration(
                hint: 'Perez',
                label: 'Your Last name',
                icon: Icons.account_circle_outlined,
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: CustomInputs.loginInputDecoration(
                hint: 'example@example.com',
                label: 'Your email',
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
                const LinkText(
                  text: "Do you have an account? go to "
                      "login",
                  color: AppColors.textColor2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
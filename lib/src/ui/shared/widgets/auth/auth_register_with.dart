import 'package:flutter/material.dart';
import 'package:point_sale_app/src/ui/shared/widgets/buttons/custom_outlined_button.dart';
import 'package:point_sale_app/src/ui/shared/widgets/text/custom_text_style.dart';
import 'package:point_sale_app/src/utils/app_colors.dart';

class AuthRegisterWith extends StatefulWidget {
  final Function() onGooglePressed;
  final Function() onFacebookPressed;

  const AuthRegisterWith(
      {Key? key,
      required this.onGooglePressed,
      required this.onFacebookPressed})
      : super(key: key);

  @override
  _AuthRegisterWithState createState() => _AuthRegisterWithState();
}

class _AuthRegisterWithState extends State<AuthRegisterWith> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        const SizedBox(height: 10),
        Row(
          children: [
            const Spacer(),
            Text("or",
                style:
                    CustomTextStyle.textStyle(14, AppColors.textColor2, false)),
            const Spacer(),
          ],
        ),
        const SizedBox(height: 10),
        (size.width > 800) ? _desktopBody() : _mobileBody(),
      ],
    );
  }

  Row _desktopBody() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomOutlinedButton(
            text: 'Sign in with Google',
            icon: "google.png",
            color: AppColors.authBackgroundColor,
            onPressed: widget.onGooglePressed,
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: CustomOutlinedButton(
            text: 'Sign in with Facebook',
            icon: "facebook.png",
            color: AppColors.authBackgroundColor,
            onPressed: widget.onFacebookPressed,
          ),
        ),
      ],
    );
  }

  Column _mobileBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomOutlinedButton(
          text: 'Sign in with Google',
          icon: "google.png",
          color: AppColors.authBackgroundColor,
          onPressed: widget.onGooglePressed,
        ),
        const SizedBox(height: 10),
        CustomOutlinedButton(
          text: 'Sign in with Facebook',
          icon: "facebook.png",
          color: AppColors.authBackgroundColor,
          onPressed: widget.onFacebookPressed,
        ),
      ],
    );
  }
}

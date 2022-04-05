import 'package:flutter/material.dart';
import 'package:point_sale_app/src/ui/layouts/auth/widgets/background_sales_app.dart';
import 'package:point_sale_app/src/ui/shared/view/auth/login_view.dart';
import 'package:point_sale_app/src/ui/shared/view/auth/register_view.dart';
import 'package:point_sale_app/src/utils/app_colors.dart';

class AuthLoginLayout extends StatefulWidget {
  const AuthLoginLayout({Key? key}) : super(key: key);

  @override
  State<AuthLoginLayout> createState() => _AuthLoginLayoutState();
}

class _AuthLoginLayoutState extends State<AuthLoginLayout> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Scrollbar(
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: [
            (size.width > 1000) ? const _DesktopBody() : const _MobileBody()
          ],
        ),
      ),
    );
  }
}

class _DesktopBody extends StatelessWidget {
  const _DesktopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width,
      height: size.height,
      child: Row(
        children: [
          const BackgroundSalesApp(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            width: 700,
            height: double.infinity,
            color: AppColors.authBackgroundColor2,
            child: Column(
              children: [
                const Spacer(),
                const RegisterView(),
                const Spacer(),
                Text(
                  "2022 Spacecodee | Point sale app",
                  style: TextStyle(
                    color: AppColors.textColor.withOpacity(.5),
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _MobileBody extends StatelessWidget {
  const _MobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.authBackgroundColor2,
      child: Column(
        children: [
          const SizedBox(height: 10),
          const SizedBox(
            width: double.infinity,
            child: RegisterView(),
          ),
          const SizedBox(height: 20),
          Flex(
            direction: Axis.horizontal,
            children: const [
              BackgroundSalesApp(),
            ],
          ),
        ],
      ),
    );
  }
}

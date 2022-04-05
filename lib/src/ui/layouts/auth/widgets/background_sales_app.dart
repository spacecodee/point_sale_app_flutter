import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:point_sale_app/src/ui/shared/widgets/app/logo_app.dart';
import 'package:point_sale_app/src/ui/shared/widgets/text/custom_text_style.dart';
import 'package:point_sale_app/src/utils/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BackgroundSalesApp extends StatefulWidget {
  const BackgroundSalesApp({Key? key}) : super(key: key);

  @override
  _BackgroundSalesAppState createState() => _BackgroundSalesAppState();
}

class _BackgroundSalesAppState extends State<BackgroundSalesApp> {
  final urlImages = [
    'assets/img/auth_1.svg',
    'assets/img/auth_2.svg',
    'assets/img/auth_3.svg',
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        color: AppColors.authBackgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const LogoApp(),
            CarouselSlider.builder(
              itemCount: urlImages.length,
              options: CarouselOptions(
                autoPlay: true,
                viewportFraction: 1,
                enlargeCenterPage: true,
                autoPlayAnimationDuration: const Duration(seconds: 2),
                onPageChanged: (index, reason) {
                  setState(
                    () {
                      _currentIndex = index;
                    },
                  );
                },
              ),
              itemBuilder: (context, index, realIndex) {
                final urlImage = urlImages[index];
                return buildImage(urlImage, index);
              },
            ),
            const SizedBox(height: 10),
            Text(
              "Manage sales, inventory and other transactions",
              textAlign: TextAlign.center,
              style: CustomTextStyle.textStyle(24, AppColors.textColor, true),
            ),
            buildIndicator(),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget buildImage(String urlImage, int index) {
    return Container(
      color: AppColors.authBackgroundColor,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: SvgPicture.asset(
        urlImage,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget buildIndicator() {
    return AnimatedSmoothIndicator(
      activeIndex: _currentIndex,
      count: urlImages.length,
      effect: const ExpandingDotsEffect(
        spacing: 8.0,
        radius: 8.0,
        activeDotColor: AppColors.primaryColor,
      ),
    );
  }
}

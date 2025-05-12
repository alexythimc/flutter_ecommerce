import 'package:e_commerce_application/features/authentication/screens/on_boarding/widgets/skip_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/deviceutils.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../../../../../utils/theme/custom_themes/text_theme.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
  });
  final String imagePath, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
        ),
        //text button
        SkipButton(),
        SizedBox(
          height: 380,
          child: Image(
              height: THelperFunctions.getScreenHeight(context) * 0.8,
              width: THelperFunctions.getScreenWidth(context) * 2,
              image: AssetImage(imagePath)),
        ),
        Text(
          title,
          style: TTextTheme.textTheme.headlineLarge,
        ),
        SizedBox(height: TSizes.defaultItemSpace),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: TTextTheme.textTheme.headlineSmall,
        ),
        SizedBox(
          height: 120,
        ),
        Row(
          children: [
            SmoothPageIndicator(
              effect: WormEffect(
                dotHeight: 5,
                dotWidth: 30,
                activeDotColor: TDeviceUtils.isDarkMode(context)
                    ? Colors.white
                    : Colors.black,
                dotColor: TDeviceUtils.isDarkMode(context)
                    ? Colors.white.withOpacity(0.5)
                    : Colors.black.withOpacity(0.5),
              ),
              controller: PageController(),
              count: 3,
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        // Arrow button
        ArrowButtonWidget(),
      ],
    );
  }
}

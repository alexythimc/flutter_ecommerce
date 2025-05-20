import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/device/deviceutils.dart';
import '../../../controllers/on_boarding_controller.dart';

class OnBoardingPageNavigation extends StatelessWidget {
  const OnBoardingPageNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = TDeviceUtils.isDarkMode(context);
    return Row(
      children: [
        SmoothPageIndicator(
          //  The width of page indicator widget should be a bit more if it is currently active
          //  and a bit less if it is not active
          effect: ExpandingDotsEffect(
            dotHeight: 5,
            dotWidth: 20,
            activeDotColor: isDarkMode ? Colors.white : Colors.black,
            dotColor: isDarkMode
                ? Colors.white.withOpacity(0.5)
                : Colors.black.withOpacity(0.5),
          ),
          controller:
              OnBoardingController.instance.pageController, // PageController
          count: 3,
        ),
      ],
    );
  }
}

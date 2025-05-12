import 'package:e_commerce_application/features/authentication/screens/on_boarding/widgets/onboardingpage.dart';
import 'package:e_commerce_application/utils/constants/image_strings.dart';
import 'package:e_commerce_application/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              OnBoardingPage(
                imagePath: TImageStrings.onboarding1,
                title: TTextStrings.onBoardingTitle1,
                subtitle: TTextStrings.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                imagePath: TImageStrings.onboarding2,
                title: TTextStrings.onBoardingTitle2,
                subtitle: TTextStrings.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                imagePath: TImageStrings.onboarding3,
                title: TTextStrings.onBoardingTitle3,
                subtitle: TTextStrings.onBoardingSubTitle3,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

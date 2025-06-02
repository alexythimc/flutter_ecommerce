import 'package:e_commerce_application/features/authentication/screens/on_boarding/widgets/skip_button.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../../../../../utils/theme/custom_themes/text_theme.dart';
import 'onboarding_navigation.dart';

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
          style: TTextTheme.textTheme.headlineMedium,
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
        OnBoardingPageNavigation(),
        SizedBox(
          height: 30,
        ),
        // Arrow button
        ArrowButtonWidget(),
      ],
    );
  }
}

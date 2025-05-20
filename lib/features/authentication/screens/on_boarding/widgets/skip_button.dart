import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../controllers/on_boarding_controller.dart';

class ArrowButtonWidget extends StatelessWidget {
  const ArrowButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: ElevatedButton(
            onPressed: () => OnBoardingController.instance.goToNextPage(),
            child: Icon(
              Iconsax.arrow_circle_right,
            ),
          ),
        )
      ],
    );
  }
}

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        TextButton(
          onPressed: () => OnBoardingController.instance.skipOnboarding(),
          child: Text("Skip"),
        ),
      ],
    );
  }
}

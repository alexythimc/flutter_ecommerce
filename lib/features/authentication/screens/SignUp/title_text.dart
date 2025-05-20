import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(children: [
        SizedBox(
          height: TSizes.appBarHeight,
        ),
        Text(
          "Let's Create Your Account",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ]),
    );
  }
}

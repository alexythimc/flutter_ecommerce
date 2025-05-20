import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class PasswordVerificationTitleSubtitle extends StatelessWidget {
  const PasswordVerificationTitleSubtitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Text(TTextStrings.forgotPasswordemailVerificationTitle,
              style: Theme.of(context).textTheme.headlineMedium),
          Text(TTextStrings.forgotPasswordemailVerificationSubTitle),
          const SizedBox(
            height: TSizes.defaultSpace,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class VerifcationTitleNsubtitle extends StatelessWidget {
  const VerifcationTitleNsubtitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Text(TTextStrings.emailVerificationTitle,
              style: Theme.of(context).textTheme.headlineMedium),
          Text(TTextStrings.emailVerificationSubtitle),
          const SizedBox(
            height: TSizes.defaultSpace,
          ),
        ],
      ),
    );
  }
}

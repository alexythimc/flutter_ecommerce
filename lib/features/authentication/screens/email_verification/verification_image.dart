import 'package:flutter/material.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/device/deviceutils.dart';

class VerificationImage extends StatelessWidget {
  const VerificationImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: TDeviceUtils.screenHeight(context) * 0.5,
      child: Image(
        image: AssetImage(
          TImageStrings.emailverification,
        ),
      ),
    );
  }
}

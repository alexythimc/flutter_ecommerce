import 'package:flutter/cupertino.dart';

import '../../../../../utils/device/deviceutils.dart';
import 'curved_edges.dart';

class ImageClip extends StatelessWidget {
  const ImageClip({
    super.key,
    required this.imagePath,
  });

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCurvedEdges(),
      child: Image.asset(
        imagePath,
        width: double.infinity,
        height: TDeviceUtils.screenHeight(context) * 0.4,
        fit: BoxFit.cover,
      ),
    );
  }
}

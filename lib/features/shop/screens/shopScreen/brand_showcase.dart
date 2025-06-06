import 'package:flutter/material.dart';

import '../../../../utils/constants/image_strings.dart';
import 'brand_with_photos.dart';

class BrandShowCase extends StatelessWidget {
  const BrandShowCase({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BrandWithProducts(
      brandName: TImageStrings.brandNames[0],
      brandImage: TImageStrings.brandLogos[0],
      productImages: TImageStrings.featuredProducts,
    );
  }
}

import 'package:e_commerce_application/features/shop/screens/shopScreen/photos_array.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/deviceutils.dart';

class BrandWithProducts extends StatelessWidget {
  const BrandWithProducts({
    super.key,
    this.brandName,
    this.brandImage,
    this.productCount,
    this.productImages,
  });
  final String? brandName;
  final String? brandImage;
  final int? productCount;
  final List<String>? productImages;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          margin: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(
                color: TDeviceUtils.isDarkMode(context)
                    ? Colors.white
                    : Colors.black),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: TSizes.defaultItemSpace,
                ),
                Row(
                  children: [
                    Image(
                      image: AssetImage(brandImage!),
                      height: TSizes.mdIcon,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              brandName!,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            const Icon(Iconsax.verify5, size: 16),
                          ],
                        ),
                        Text(
                          "256 Products",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        // product Image
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: PhotosArray(productsImages: productImages ?? []),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

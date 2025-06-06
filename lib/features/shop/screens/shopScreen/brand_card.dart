import 'package:e_commerce_application/utils/device/deviceutils.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/grid_layout.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class BrandCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TGridLayoutBuilder(
        mainAxisExtent: 80,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Container(
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Image(
                      image: AssetImage(TImageStrings.brandLogos[index]),
                      height: TSizes.mdIcon,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            TImageStrings.brandNames[index],
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
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }

  const BrandCard({
    super.key,
  });
}

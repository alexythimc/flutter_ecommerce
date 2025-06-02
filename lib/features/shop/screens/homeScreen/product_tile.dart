import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/device/deviceutils.dart';

class ProductWidgetVertical extends StatelessWidget {
  const ProductWidgetVertical({
    super.key,
    required this.imagePath,
    required this.title,
    required this.brand,
    required this.price,
  });

  final String imagePath;
  final String title;
  final String brand;
  final String price;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isDark = TDeviceUtils.isDarkMode(context);

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0),
          child: Container(
            // Use parent's constraints instead of fixed screen size
            decoration: BoxDecoration(
              border: Border.all(
                color: isDark ? Colors.white54 : Colors.black38,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Image with dynamic height
                    ClipRRect(
                      borderRadius:
                          const BorderRadius.vertical(top: Radius.circular(20)),
                      child: SizedBox(
                        height: constraints.maxHeight * 0.6,
                        width: double.infinity,
                        child: Stack(
                          children: [
                            Image.asset(
                              imagePath,
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                            Positioned(
                              top: 10,
                              right: 2,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: const CircleBorder(),
                                  backgroundColor: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                  foregroundColor: Colors.black,
                                ),
                                onPressed: () {},
                                child: const Icon(
                                  Iconsax.heart,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Title, brand, price
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(title,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: Theme.of(context).textTheme.headlineSmall),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              Text(brand,
                                  style:
                                      Theme.of(context).textTheme.titleMedium),
                              const SizedBox(width: 4),
                              const Icon(Iconsax.verify5, size: 16),
                            ],
                          ),
                          const SizedBox(height: 4),
                          Text(
                            "\$ $price",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // Bottom add button
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: SizedBox(
                    height: constraints.maxHeight * 0.17,
                    child: Center(
                      child: ElevatedButton(
                        style: ButtonStyle(),
                        onPressed: () {},
                        child: const Icon(Iconsax.add),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

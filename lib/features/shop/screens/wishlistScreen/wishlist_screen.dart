import 'package:e_commerce_application/common/widgets/app_bar.dart';
import 'package:e_commerce_application/common/widgets/grid_layout.dart';
import 'package:e_commerce_application/features/shop/screens/homeScreen/product_tile.dart';
import 'package:e_commerce_application/utils/device/deviceutils.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/image_strings.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title:
            Text("Wishlist", style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          IconButton(
            icon: Icon(
              Iconsax.add4,
              color: TDeviceUtils.isDarkMode(context)
                  ? Colors.white
                  : Colors.black,
            ),
            onPressed: () {
              // Implement search functionality here
            },
          ),
          IconButton(
            icon: const Icon(
              Iconsax.search_favorite,
              color: Colors.red,
            ),
            onPressed: () {
              // Implement delete functionality here
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// add ProductCardVertical() using TGridLayoutBuilder
            TGridLayoutBuilder(
                mainAxisExtent: 288,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ProductWidgetVertical(
                      imagePath: TImageStrings.categoryImages[4],
                      title: "Product 2",
                      brand: "Brand B",
                      price: "23.55");
                }),
          ],
        ),
      ),
    );
  }
}

import 'package:e_commerce_application/features/shop/controllers/home_screen_controller.dart';
import 'package:e_commerce_application/features/shop/screens/homeScreen/search_bar.dart';
import 'package:e_commerce_application/utils/constants/image_strings.dart';
import 'package:e_commerce_application/utils/device/deviceutils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'category_title.dart';
import 'curvedEdges/home_clip.dart';
import 'custom_appbar.dart';
import 'featured_products_slider.dart';
import 'image_title_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final imagePath = TImageStrings.home_light;
    final controller = Get.put(HomeScreenController());
    return Scaffold(
      body: Column(
        children: [
          // Stack for image + app bar
          Stack(
            children: [
              // Curved image
              ImageClip(imagePath: imagePath),
              TCustomAppBar(),

              TSearchBar(),
              CategoriesTitle(),
              // Category buttons in horizontal list using ListView builder

              // Horizontal list of category buttons with titles and images dynamically generated using ListView.builder
              TImageTitleBuilder(
                title: TImageStrings.categoryTitles,
                onTap: () {},
                imagepaths: TImageStrings.categoryImages,
              ),
            ],
          ),
          // Rest of the scrollable content
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FeaturedProducts(),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ProductWidgetVertical(
                          imagePath: TImageStrings.home_dark,
                          title: "Product 1",
                          brand: "Brand A",
                          price: "29.99",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ProductWidgetVertical(
                          imagePath: TImageStrings.home_dark,
                          title: "Product 1",
                          brand: "Brand A",
                          price: "29.99",
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 800,
                  ), // Add more content as needed
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

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
    return Stack(children: [
      Container(
        height: TDeviceUtils.screenHeight(context) * 0.4,
        width: TDeviceUtils.screenWidth(context) * 0.45,
        decoration: BoxDecoration(
          // color: Colors.white30,
          border: Border.all(
            color: TDeviceUtils.isDarkMode(context)
                ? Colors.white54
                : Colors.black26,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Stack(children: [
                Image(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 10,
                  right: 2,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: WidgetStateProperty.all(const CircleBorder()),
                      backgroundColor:
                          WidgetStateProperty.all(Colors.transparent),
                      shadowColor: WidgetStateProperty.all(Colors.transparent),
                    ),
                    onPressed: () {},
                    child: Icon(Iconsax.heart),
                  ),
                ),
              ]),
            ),
            // Title and description
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: 8),
                    Text(brand, style: Theme.of(context).textTheme.titleMedium),
                    const SizedBox(height: 15),
                    //price
                    Text(
                      "\$ $price",
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      Positioned(
        bottom: 0,
        right: 0,
        child: ElevatedButton(
            style: ButtonStyle(), onPressed: () {}, child: Icon(Iconsax.add)),
      )
    ]);
  }
}

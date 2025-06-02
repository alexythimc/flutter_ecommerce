import 'package:e_commerce_application/features/shop/controllers/home_screen_controller.dart';
import 'package:e_commerce_application/features/shop/screens/homeScreen/product_tile.dart';
import 'package:e_commerce_application/features/shop/screens/homeScreen/search_bar.dart';
import 'package:e_commerce_application/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/grid_layout.dart';
import '../../../../common/widgets/title_bar.dart';
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

              TSearchBar(
                padding:
                    const EdgeInsets.only(top: 100.0, left: 8.0, right: 8.0),
              ),
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
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: TitleBar(
                      title: "Products for you",
                      actionText: "see all",
                    ),
                  ),
                  TGridLayoutBuilder(
                    mainAxisExtent: 288,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return ProductWidgetVertical(
                        imagePath: TImageStrings.home_dark,
                        title: "Product 1",
                        brand: "Brand A",
                        price: "29.99",
                      );
                    },
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

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_commerce_application/utils/device/deviceutils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../controllers/home_screen_controller.dart';

class FeaturedProducts extends StatelessWidget {
  FeaturedProducts({
    super.key,
  });

  HomeScreenController controller = Get.put(HomeScreenController());
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "Featured Products",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),

          CarouselSlider(
            // Initialize current index
            items: [
              // get the current index of the carousel
              for (int i = 0; i < TImageStrings.featuredProducts.length; i++)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image(
                      image: AssetImage(TImageStrings.featuredProducts[i]),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
            ],
            options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                controller.changeIndex(index.toDouble());
              },
            ),
          ),
          // Indicator for carousel using DotsIndicator
          Obx(
            () => Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Center(
                child: DotsIndicator(
                  dotsCount: TImageStrings.featuredProducts.length,
                  position: controller.currentIndex
                      .value, //// Update this based on the current index
                  decorator: DotsDecorator(
                      size: const Size(40.0, 6.0),
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      activeColor: TDeviceUtils.isDarkMode(context)
                          ? Colors.white
                          : Colors.black,
                      color: Colors.grey,
                      activeSize: const Size(40.0, 8.0)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

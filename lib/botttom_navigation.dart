import 'package:e_commerce_application/features/shop/controllers/bottom_navigation_controller.dart';
import 'package:e_commerce_application/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BottomNavigationController());
    return Obx(
      () => Scaffold(
        body: IndexedStack(
          index: controller.currentIndex.value,
          children: controller.pages,
        ),
        bottomNavigationBar: SizedBox(
          height: TSizes.bottomNavigationBarHeight,
          child: BottomNavigationBar(
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                activeIcon: Icon(Iconsax.home5),
                icon: Icon(Iconsax.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(Iconsax.shop5),
                icon: Icon(Iconsax.shop),
                label: 'Shop',
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(Iconsax.heart5),
                icon: Icon(Iconsax.heart),
                label: 'Wishlist',
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.orange,
                activeIcon: Icon(Iconsax.profile_2user5),
                icon: Icon(Iconsax.profile_2user),
                label: 'Profile',
              ),
            ],
            currentIndex: controller.currentIndex.value,
            onTap: (index) => controller.changePage(index),
          ),
        ),
      ),
    );
  }
}

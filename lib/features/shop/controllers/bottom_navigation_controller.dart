import 'package:e_commerce_application/features/shop/screens/homeScreen/home_screen_.dart';
import 'package:e_commerce_application/features/shop/screens/profileScreen/profile_screen.dart';
import 'package:e_commerce_application/features/shop/screens/shopScreen/shop_screen.dart';
import 'package:e_commerce_application/features/shop/screens/wishlistScreen/wishlist_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class BottomNavigationController extends GetxController {
  var currentIndex = 0.obs;
  final List<Widget> pages = [
    HomeScreen(),
    ShopScreen(),
    WishlistScreen(),
    ProfileScreen()
  ];

  void changePage(int index) {
    currentIndex.value = index;
  }

  void navigateToPage(int index) {
    switch (index) {
      case 0:
        Get.to(HomeScreen());
        break;
      case 1:
        Get.to(ShopScreen());
        break;
      case 2:
        Get.to(WishlistScreen());
        break;
      default:
        Get.to(HomeScreen());
    }
  }
}

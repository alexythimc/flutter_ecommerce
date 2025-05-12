import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPage = 0.obs;

  void onPageChanged(int index) {
    currentPage.value = index;
  }

  void goToNextPage() {
    if (currentPage.value < 2) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      // Navigate to the next screen
      Get.offAllNamed('/home');
    }
  }
  void goToPreviousPage() {
    if (currentPage.value > 0) {
      pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }
  void skipOnboarding() {
   //navigate to the last page
    currentPage.value = 2;
    pageController.jumpToPage(2);
  }

  //dotNavigationclick
  void onDotClicked(int index) {
    currentPage.value = index;
    pageController.jumpToPage(index);
  }
}

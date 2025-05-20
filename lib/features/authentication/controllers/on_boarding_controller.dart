import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/logIn/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPage = 0.obs;

  void onPageChanged(int index) {
    currentPage.value = index;
  }

  void goToNextPage() {
    // go to next page
    if (currentPage.value < 2) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 700),
        curve: Curves.easeIn,
      );
    } else {
      //return login page after the last page with animation

      Get.to(
        () => const LoginPage(),
        transition: Transition.rightToLeft,
      );
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
    //navigate to the last page WITH animation
    pageController.animateToPage(
      2,
      duration: const Duration(milliseconds: 700),
      curve: Curves.easeIn,
    );
  }

  //dotNavigationclick
  void onDotClicked(index) {
    currentPage.value = index;
    //jump to the page with effect

    pageController.jumpToPage(index);
  }
}

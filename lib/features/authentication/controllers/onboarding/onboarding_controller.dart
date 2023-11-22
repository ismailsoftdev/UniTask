import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unitask/features/authentication/screens/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  // Update the current page index when page is scrolled
  void updatePageIndex(int index) {
    currentPageIndex.value = index;
  }

  // Jump to specific dot selected page
  void dotNavigationClick(int index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  // Update the current Index & jump to the next page
  void nextPage() {
    if (currentPageIndex.value != 2) {
      currentPageIndex.value++;
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Get.offAll(() => const LoginScreen());
    }
  }

  // Update the current Index & jump to the last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}

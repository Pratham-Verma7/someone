import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class loginController extends GetxController {
  // Add your logic here
  static loginController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  // update current index when page scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  void dotNavigationClick(index) {
    // jump to specific dot selected
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  void skipPage() {
    // skip to last page and move to home page
    currentPageIndex.value = 2;
    pageController.animateToPage(
      2,
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
    );
  }

  void authGoogle() {
    // auth with google
  }

  void nextPage() {
    // move to next page
    if (currentPageIndex.value == 2) {
      // Get.to(LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.animateToPage(
        page,
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    }
  }
}

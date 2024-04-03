import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:someone_datingapp/features/main_app/screens/home/home.dart';
import 'package:someone_datingapp/features/personalization/screens/settings/profile_scrn.dart';
import 'package:someone_datingapp/utils/constants/colors.dart';
import 'package:someone_datingapp/utils/helpers/helper_functions.dart';

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    // screens to navigate
    const HomeScreen(),
    Container(color: Colors.blue),
    Container(color: Colors.green),
    const profileScreen(),
  ];
}

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final List<NavigationDestination> destinations = [
      // screen navigation labels
      const NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
      const NavigationDestination(
          icon: Icon(Iconsax.building), label: 'College'),
      const NavigationDestination(icon: Icon(Iconsax.message), label: 'Chat'),
      const NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
    ];

    // dont change below code
    final controller = Get.put(NavigationController());
    final darkMode = SHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (Index) =>
              controller.selectedIndex.value = Index,
          backgroundColor: darkMode ? Colors.black : Colors.white,
          indicatorColor: darkMode
              ? SColors.white.withOpacity(0.1)
              : SColors.black.withOpacity(0.1),
          destinations: destinations,
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

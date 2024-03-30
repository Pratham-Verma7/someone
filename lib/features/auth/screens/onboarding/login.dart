import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:someone_datingapp/features/auth/controllers.login/login_controller.dart';
import 'package:someone_datingapp/features/auth/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:someone_datingapp/features/auth/screens/onboarding/widgets/onboarding_login.dart';
import 'package:someone_datingapp/features/auth/screens/onboarding/widgets/onboarding_page.dart';
import 'package:someone_datingapp/utils/constants/images_str.dart';
import 'package:someone_datingapp/utils/constants/sizes.dart';
import 'package:someone_datingapp/utils/constants/text_str.dart';
import 'package:someone_datingapp/utils/device/device_utility.dart';
import 'package:someone_datingapp/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(loginController());
    return Scaffold(
      body: Stack(
        children: [
          // Add your logic here
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              onBoardingPage(
                image: SImages.onBoardingImg1,
                title: STexts.onboardingTitle1,
                description: STexts.onboardingDesc1,
              ),
              onBoardingPage(
                image: SImages.onBoardingImg1,
                title: STexts.onboardingTitle2,
                description: STexts.onboardingDesc2,
              ),
              onBoardingPage(
                image: SImages.onBoardingImg1,
                title: STexts.onboardingTitle3,
                description: STexts.onboardingDesc3,
              ),
            ],
          ),

          const onBoardingLogin(),

          const obBoardingDotNavigation(),

          const onBoardingNextButton(),
        ],
      ),
    );
  }
}

class onBoardingNextButton extends StatelessWidget {
  const onBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: SDeviceUtils.getBottomNavigationBarHeight(),
      right: Sizes.defaultSpace,
      child: ElevatedButton(
        onPressed: () => loginController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          backgroundColor: dark ? SColors.primary : SColors.black,
          shape: const CircleBorder(),
        ),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}

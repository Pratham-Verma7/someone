import 'package:flutter/material.dart';
import 'package:someone_datingapp/features/auth/controllers.login/login_controller.dart';
import 'package:someone_datingapp/utils/constants/colors.dart';
import 'package:someone_datingapp/utils/constants/sizes.dart';
import 'package:someone_datingapp/utils/device/device_utility.dart';
import 'package:someone_datingapp/utils/helpers/helper_functions.dart';

class onBoardingNextButton extends StatelessWidget {
  const onBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: SDeviceUtils.getBottomNavigationBarHeight() + 4,
      right: Sizes.defaultSpace,
      child: ElevatedButton(
        onPressed: () => loginController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
            backgroundColor: dark ? SColors.primary : SColors.black,
            padding: const EdgeInsets.all(Sizes.defaultSpace),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Sizes.buttonRadius + 12),
            )),
        child: Container(
          width: SDeviceUtils.getScreenWidth(context) - Sizes.defaultSpace * 4,
          alignment: Alignment.center,
          child: const Image(
              // width: SHelperFunctions.screenWidth() * 0.8,
              // height: SHelperFunctions.screenHeight() * 0.6,
              image: AssetImage('assets/logo/google.png')),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:someone_datingapp/features/auth/controllers.login/login_controller.dart';
import 'package:someone_datingapp/utils/constants/colors.dart';
import 'package:someone_datingapp/utils/constants/sizes.dart';
import 'package:someone_datingapp/utils/device/device_utility.dart';
import 'package:someone_datingapp/utils/helpers/helper_functions.dart';

class onBoardingAuthButton extends StatelessWidget {
  const onBoardingAuthButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: SDeviceUtils.getBottomNavigationBarHeight(),
      right: Sizes.defaultSpace,
      child: ElevatedButton(
        onPressed: () => loginController.instance.authGoogle(),
        style: ElevatedButton.styleFrom(
            backgroundColor: dark ? SColors.white : SColors.black,
            padding: const EdgeInsets.all(Sizes.defaultSpace),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Sizes.buttonRadius + 12),
            )),
        child: Container(
          width: SDeviceUtils.getScreenWidth(context) - Sizes.defaultSpace * 4,
          alignment: Alignment.center,
          child: const Image(
              // width: SHelperFunctions.screenWidth() * 0.8,
              height: Sizes.iconLg,
              image: AssetImage('assets/logo/google.png')),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:someone_datingapp/comman/containers/roundedContainer.dart';
import 'package:someone_datingapp/comman/layouts/list_tiles/settings_menu_tile.dart';
import 'package:someone_datingapp/comman/layouts/list_tiles/user_profile.dart';
import 'package:someone_datingapp/comman/layouts/list_tiles/userprofile_img_tile.dart';
import 'package:someone_datingapp/comman/texts/section_heading.dart';
import 'package:someone_datingapp/utils/constants/colors.dart';
import 'package:someone_datingapp/utils/constants/images_str.dart';
import 'package:someone_datingapp/utils/constants/sizes.dart';
import 'package:someone_datingapp/utils/helpers/helper_functions.dart';

class profileScreen extends StatelessWidget {
  const profileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          userProfileImgTile(
              likes: 85,
              profileCoverImg: const AssetImage(SImages.profileCardBg),
              profileImg: const AssetImage(SImages.profileImg),
              leadingWidget: roundedContainer(
                  child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Iconsax.setting_24,
                  size: 28,
                ),
                color: dark ? SColors.white : SColors.black,
              ))),
          // settings - top section

          // settings - bottom section
          Container(
            width: SHelperFunctions.screenWidth() * 0.75,
            padding: const EdgeInsets.symmetric(horizontal: Sizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: Sizes.spaceBtwItems,
                ),
                Text(
                  'Ayush | Vihaan',
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(
                  height: Sizes.spaceBtwItems / 4,
                ),
                Text(
                  '@ayushvihaan',
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      color: dark
                          ? SColors.white.withOpacity(0.75)
                          : SColors.black.withOpacity(0.75)),
                ),
                const SizedBox(
                  height: Sizes.spaceBtwItems / 2,
                ),
                Text(
                  'dhfhfsfksjvfksdjcjksdbdcjksbkdjcbksckjbdcsdbdkbksdbkvbsbv\nskjdbvkdbkvjbskjbdvkjsdvbksdbvbsdk',
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: Sizes.spaceBtwItems,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Sizes.defaultSpace),
            child: Row(
              children: [
                Expanded(
                    child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: dark
                        ? SColors.white.withOpacity(0.15)
                        : SColors.lightGrey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(Sizes.borderRadiusMd),
                    ),
                  ),
                  child: Text(
                    'Edit Profile',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  onPressed: () {},
                )),
                const SizedBox(
                  width: Sizes.spaceBtwItems,
                ),
                Expanded(
                    child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: dark
                        ? SColors.white.withOpacity(0.15)
                        : SColors.lightGrey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(Sizes.borderRadiusMd),
                    ),
                  ),
                  child: Text(
                    'Share Profile',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  onPressed: () {},
                )),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(Sizes.defaultSpace),
            child: Column(
              children: [
                const BSectionHeading(
                  title: 'Settings',
                ),
                const SizedBox(
                  height: Sizes.spaceBtwItems,
                ),
                const BSettingMenuTile(
                    title: 'My College',
                    icon: Iconsax.building,
                    subTitle:
                        'Galgotias College of Engineering and Technology'),
                const SizedBox(height: Sizes.spaceBtwSections),
                // user profile card
                const SUserProfileTile(),
                const SizedBox(
                  height: Sizes.spaceBtwSections,
                ),
                const SizedBox(
                  height: Sizes.spaceBtwSections,
                ),
                SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () {},
                        // AuthenticationRepository.instance.signOut(),
                        child: const Text('Logout'))),
                Text(
                    '${SHelperFunctions.screenHeight()} x ${SHelperFunctions.screenWidth()} | ${SHelperFunctions.screenSize()}'),
                const SizedBox(
                  height: Sizes.spaceBtwSections * 2.5,
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:someone_datingapp/comman/containers/primary_header_container.dart';
import 'package:someone_datingapp/comman/layouts/list_tiles/settings_menu_tile.dart';
import 'package:someone_datingapp/comman/layouts/list_tiles/user_profile.dart';
import 'package:someone_datingapp/comman/texts/section_heading.dart';
import 'package:someone_datingapp/comman/widgets/appbar/appbar.dart';
import 'package:someone_datingapp/utils/constants/colors.dart';
import 'package:someone_datingapp/utils/constants/sizes.dart';

class profileScreen extends StatelessWidget {
  const profileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          // settings - top section
          SPrimaryHeaderContainer(
            child: Column(
              children: [
                SAppBar(
                    title: Text('Account',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .apply(color: SColors.white))),
                const SizedBox(height: Sizes.spaceBtwSections),
                // user profile card
                const SUserProfileTile(),
                const SizedBox(
                  height: Sizes.spaceBtwSections,
                )
                // user email
              ],
            ),
          ),
          // settings - bottom section
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
                const SizedBox(
                  height: Sizes.spaceBtwSections,
                ),
                SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () {}, child: const Text('Logout'))),
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

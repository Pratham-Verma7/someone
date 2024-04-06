import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:someone_datingapp/comman/layouts/list_tiles/settings_menu_tile.dart';
import 'package:someone_datingapp/comman/layouts/list_tiles/user_profile.dart';
import 'package:someone_datingapp/comman/texts/section_heading.dart';
import 'package:someone_datingapp/comman/widgets/appbar/appbar.dart';
import 'package:someone_datingapp/comman/widgets/custom_shapes/widget_curved_edges.dart';
import 'package:someone_datingapp/data/repositories/authentication_repo/authentication_repository.dart';
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
          SCurvedEdgeWidget(
            child: Container(
              color: SColors.primary,
              padding: const EdgeInsets.all(0),
              child: Stack(
                //   stack

                children: [
                  const SizedBox(
                    height: 250,
                  ),
                  SAppBar(
                    title: Text('Account',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .apply(color: SColors.white)),
                    actions: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Iconsax.setting_25,
                            color: SColors.white,
                          ))
                    ],
                  ),
                ],
              ),
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
                        onPressed: () =>
                            AuthenticationRepository.instance.signOut(),
                        child: const Text('Logout'))),
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

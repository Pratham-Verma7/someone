import 'package:flutter/material.dart';
import 'package:someone_datingapp/utils/constants/colors.dart';
import 'package:someone_datingapp/utils/constants/sizes.dart';
import 'package:someone_datingapp/utils/helpers/helper_functions.dart';

class userProfileDataContainer extends StatelessWidget {
  const userProfileDataContainer({
    super.key,
    required this.profileName,
    required this.profileUsername,
    required this.profileBio,
  });
  final String profileName;
  final String profileUsername;
  final String profileBio;
  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Container(
      width: SHelperFunctions.screenWidth() * 0.75,
      padding: const EdgeInsets.symmetric(horizontal: Sizes.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: Sizes.spaceBtwItems,
          ),
          Text(
            profileName,
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(
            height: Sizes.spaceBtwItems / 4,
          ),
          Text(
            profileUsername,
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
            profileBio,
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:someone_datingapp/utils/constants/colors.dart';
import 'package:someone_datingapp/utils/constants/images_str.dart';
import 'package:someone_datingapp/utils/helpers/helper_functions.dart';

class SUserProfileTile extends StatelessWidget {
  const SUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text('Ayush Yadav',
            style: Theme.of(context).textTheme.headlineSmall!),
        subtitle: Text('@ayush-yadavv',
            style: Theme.of(context).textTheme.bodyMedium!),
        leading: CircleAvatar(
          radius: 30,
          backgroundColor: SHelperFunctions.isDarkMode(context)
              ? SColors.white
              : SColors.black,
          foregroundImage: const AssetImage(SImages.profileImg),
        ),
        trailing: IconButton(
          icon: Icon(
            Iconsax.edit,
            color: SHelperFunctions.isDarkMode(context)
                ? SColors.white
                : SColors.black,
          ),
          onPressed: () {},
        ));
  }
}

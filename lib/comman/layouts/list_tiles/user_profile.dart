import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:someone_datingapp/utils/constants/colors.dart';
import 'package:someone_datingapp/utils/constants/images_str.dart';

class SUserProfileTile extends StatelessWidget {
  const SUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text('Ayush Yadav',
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: SColors.white)),
        subtitle: Text('@ayush-yadavv',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .apply(color: SColors.white)),
        leading: const CircleAvatar(
          radius: 30,
          backgroundColor: SColors.white,
          foregroundImage: AssetImage(SImages.profileImg),
        ),
        trailing: IconButton(
          icon: const Icon(
            Iconsax.edit,
            color: SColors.white,
          ),
          onPressed: () {},
        ));
  }
}

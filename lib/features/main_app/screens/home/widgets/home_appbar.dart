import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:someone_datingapp/comman/widgets/appbar/appbar.dart';
import 'package:someone_datingapp/utils/constants/colors.dart';
import 'package:someone_datingapp/utils/constants/text_str.dart';

class SHomeAppbar extends StatelessWidget {
  const SHomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(STexts.homeAppbarTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .apply(color: Colors.white.withOpacity(0.75))),
          Text(STexts.homeAppbarSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .apply(color: Colors.white)),
        ],
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Iconsax.notification_bing,
              color: SColors.white,
            ))
      ],
    );
  }
}

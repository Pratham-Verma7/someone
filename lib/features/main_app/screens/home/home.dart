import 'package:flutter/material.dart';
import 'package:someone_datingapp/comman/containers/search_container.dart';
import 'package:someone_datingapp/comman/texts/section_heading.dart';
import 'package:someone_datingapp/features/main_app/screens/home/widgets/home_appbar.dart';
import 'package:someone_datingapp/utils/constants/colors.dart';
import 'package:someone_datingapp/utils/constants/sizes.dart';

import '../../../../comman/containers/primary_header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // home widgets
            SPrimaryHeaderContainer(
                bgcolor: SColors.primary,
                child: Column(
                  children: [
                    SHomeAppbar(),
                    SizedBox(height: Sizes.spaceBtwItems),
                    BSearchContainer(
                      text: "Search",
                    ),
                    SizedBox(height: Sizes.spaceBtwSections),
                  ],
                )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Sizes.defaultSpace),
              child: Column(
                children: [
                  BSectionHeading(
                    title: 'Colleges',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

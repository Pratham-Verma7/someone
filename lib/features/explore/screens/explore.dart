import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:someone_datingapp/comman/containers/search_container.dart';
import 'package:someone_datingapp/comman/widgets/appbar/appbar.dart';
import 'package:someone_datingapp/utils/constants/sizes.dart';
import 'package:someone_datingapp/utils/helpers/helper_functions.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TabController _tabController = TabController(length: 2, vsync: this);
    final dark = SHelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(height: Sizes.defaultSpace),
            SAppBar(
              title: Text(
                'Explore',
                style: Theme.of(context).textTheme.headlineMedium!.apply(
                      color: dark ? Colors.white : Colors.black,
                    ),
              ),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Iconsax.setting_35,
                      color: dark ? Colors.white : Colors.black,
                    ))
              ],
            ),
            const SizedBox(height: Sizes.defaultSpace - 10),
            TabBar(
              // controller: _tabController,
              // indics.8)),
              tabAlignment: TabAlignment.start,
              labelColor: dark ? Colors.white : Colors.black,
              isScrollable: true,
              labelPadding:
                  const EdgeInsets.symmetric(horizontal: Sizes.defaultSpace),
              tabs: const [
                Tab(
                  child: Text(
                    "Global",
                  ),
                ),
                Tab(
                  child: Text(
                    "Colleges",
                  ),
                ),
              ],
            ),
            const SizedBox(height: Sizes.defaultSpace),
            const BSearchContainer(text: 'Search'),
            const Expanded(
              child: TabBarView(
                children: [
                  Padding(
                      padding: EdgeInsets.all(Sizes.defaultSpace),
                      child: Text('Global')),
                  Padding(
                      padding: EdgeInsets.all(Sizes.defaultSpace),
                      child: Text('Colleges')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

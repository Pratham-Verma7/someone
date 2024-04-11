// import 'package:flutter/material.dart';
// import 'package:someone_datingapp/features/main_app/screens/home/widgets/home_appbar.dart';
// import 'package:someone_datingapp/utils/constants/colors.dart';
// import 'package:someone_datingapp/utils/constants/sizes.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Expanded(
//             flex: 3,
//             child: Container(
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [
//                     SColors.primary.withOpacity(.75),
//                     SColors.primary.withOpacity(0)
//                   ],
//                   begin: Alignment.topCenter,
//                   end: Alignment.bottomCenter,
//                 ),
//               ),
//               padding: const EdgeInsets.symmetric(
//                   horizontal: Sizes.defaultSpace, vertical: Sizes.s),
//               child: const Column(
//                 children: [
//                   SHomeAppbar(),
//                   SizedBox(height: Sizes.spaceBtwItems),
//                   Center(
//                     child: Text(
//                       'Welcome!',
//                       style: TextStyle(
//                         fontSize: 32.0,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Expanded(
//             flex: 3,
//             child: Container(
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [Colors.pink[100]!, Colors.white],
//                   begin: Alignment.topCenter,
//                   end: Alignment.bottomCenter,
//                 ),
//               ),
//               padding: const EdgeInsets.symmetric(horizontal: 20.0),
//               child: Center(
//                 // Centering the content
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const Text(
//                       'Matchmaking Feature Coming Soon',
//                       style: TextStyle(
//                         fontSize: 24.0,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                     const SizedBox(height: 20.0),
//                     ElevatedButton(
//                       onPressed: () {
//                         // Navigate to '/explore' route
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.pink[300],
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: 32.0, vertical: 16.0),
//                       ),
//                       child: const Text(
//                         'Explore More',
//                         style: TextStyle(
//                           fontSize: 18.0,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

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

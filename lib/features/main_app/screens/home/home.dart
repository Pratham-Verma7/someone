import 'package:flutter/material.dart';
import 'package:someone_datingapp/comman/widgets/custom_shapes/widget_curved_edges.dart';
import 'package:someone_datingapp/utils/constants/colors.dart';

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
            child: Column(
              children: [
                // Add your logic here
              ],
            )
          ),
        ],
      ),
    ));
  }
}

class SPrimaryHeaderContainer extends StatelessWidget {
  const SPrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SCurvedEdgeWidget(
      child: Container(
        color: SColors.primary,
        padding: const EdgeInsets.all(0),
        child: const SizedBox(
        //   stack
        ),
      ),
    );
  }
}

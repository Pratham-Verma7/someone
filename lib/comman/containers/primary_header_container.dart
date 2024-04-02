import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../widgets/custom_shapes/widget_curved_edges.dart';

class SPrimaryHeaderContainer extends StatelessWidget {
  const SPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SCurvedEdgeWidget(
      child: Container(
        color: SColors.primary,
        padding: const EdgeInsets.all(0),
        child: Stack(
          //   stack

          children: [
            child,
          ],
        ),
      ),
    );
  }
}

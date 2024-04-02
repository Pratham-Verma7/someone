import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:someone_datingapp/comman/widgets/custom_shapes/widget_curved_edges.dart';
import 'package:someone_datingapp/utils/constants/colors.dart';

import '../../../../comman/containers/primary_header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          // home widgets
          SPrimaryHeaderContainer(child: Container()),
        ],
      ),
    ));
  }
}

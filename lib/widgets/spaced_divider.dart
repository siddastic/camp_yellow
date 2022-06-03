import 'package:cy_assignment/widgets/v_space.dart';
import 'package:flutter/material.dart';

class SpacedDivider extends StatelessWidget {
  const SpacedDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const VSpace(
          h: 15,
        ),
        Divider(
          color: Colors.grey.shade800,
          thickness: 2,
        ),
        const VSpace(),
      ],
    );
  }
}

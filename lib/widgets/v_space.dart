import 'package:flutter/material.dart';

class VSpace extends StatelessWidget {
  final double h;
  final bool isHorizontal;
  const VSpace({Key? key, this.h = 10, this.isHorizontal = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isHorizontal) return SizedBox(width: h);
    return SizedBox(height: h);
  }
}

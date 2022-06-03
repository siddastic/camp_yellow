// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class TouchableOpacity extends StatefulWidget {
  final Widget child;
  final Function? onTap;
  final Duration duration = const Duration(milliseconds: 50);
  final double opacity = 0.5;

  const TouchableOpacity({required this.child, this.onTap,Key? key}) : super(key: key);

  @override
  _TouchableOpacityState createState() => _TouchableOpacityState();
}

class _TouchableOpacityState extends State<TouchableOpacity> {
  late bool isDown;

  @override
  void initState() {
    super.initState();
    setState(() => isDown = false);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTapDown: (_) => setState(() => isDown = true),
      onTapUp: (_) => setState(() => isDown = false),
      onTapCancel: () => setState(() => isDown = false),
      onTap: widget.onTap as void Function()?,
      child: AnimatedOpacity(
        duration: widget.duration,
        opacity: isDown ? widget.opacity : 1,
        child: widget.child,
      ),
    );
  }
}

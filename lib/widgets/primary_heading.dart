import 'package:flutter/material.dart';

class PrimaryHeading extends StatelessWidget {
  final String text;
  final double fontSize;
  const PrimaryHeading(this.text, {Key? key,this.fontSize = 20}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}

import 'package:cy_assignment/widgets/image_banner_card.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 16),
      children: [
        ImageBannerCard(),
      ],
    );
  }
}
import 'package:flutter/material.dart';

class ImageBannerCard extends StatelessWidget {
  const ImageBannerCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(width: 2,color: Theme.of(context).primaryColor),
      ),
      child: Stack(
        children: [
          Image.network(
              "https://www.pockettactics.com/wp-content/uploads/2022/03/anime-dimensions-tier-list.jpg",
              fit: BoxFit.cover),
        ],
      ),
    );
  }
}

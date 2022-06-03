import 'package:cy_assignment/widgets/touchable_opacity.dart';
import "package:flutter/material.dart";

class LabelledImageCard extends StatelessWidget {
  final String imageSrc;
  final String text;
  const LabelledImageCard({
    Key? key,
    required this.imageSrc,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TouchableOpacity(
      child: Container(
        height: 200,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://media.istockphoto.com/photos/3d-abstract-background-with-ultraviolet-neon-lights-empty-frame-picture-id1191719793?k=20&m=1191719793&s=612x612&w=0&h=r7_rQn1XQKoNFRzYbxIB5ZEShFW1cEqkgsoa_xlCD7o=",
            ),
          ),
        ),
        child: Container(
          color: Colors.black54,
          alignment: Alignment.center,
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 25,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

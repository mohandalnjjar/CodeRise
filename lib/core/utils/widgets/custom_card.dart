import 'package:flutter/material.dart';
import 'package:learn_with_me/core/utils/assets.dart';

class CardImage extends StatelessWidget {
  const CardImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.9 / 2,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(AssetData.testImage),
            )),
      ),
    );
  }
}

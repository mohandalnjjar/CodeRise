import 'package:flutter/material.dart';
import 'package:learn_with_me/constance.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerImageEffect extends StatelessWidget {
  const ShimmerImageEffect({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      child: Container(
        color: kPrimaryColor,
      ),
      baseColor: const Color(0xff191233).withOpacity(0.6),
      highlightColor: const Color.fromARGB(255, 71, 41, 119),
    );
  }
}

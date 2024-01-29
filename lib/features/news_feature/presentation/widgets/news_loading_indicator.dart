import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 5,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
        child: Shimmer.fromColors(
          baseColor: const Color(0xff191233).withOpacity(0.6),
          highlightColor: const Color.fromARGB(255, 71, 41, 119),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff191233).withOpacity(0.6),
              borderRadius: BorderRadius.circular(17),
            ),
            height: MediaQuery.of(context).size.height * .16,
          ),
        ),
      ),
    );
  }
}

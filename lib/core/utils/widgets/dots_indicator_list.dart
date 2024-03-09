import 'package:flutter/material.dart';
import 'package:learn_with_me/core/utils/widgets/dot_indicator.dart';

class DotIndicatorList extends StatelessWidget {
  const DotIndicatorList({super.key, required this.CurrentPageIndex});
  final int CurrentPageIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: dotsIndicator(isActive: index == CurrentPageIndex),
        ),
      ),
    );
  }
}

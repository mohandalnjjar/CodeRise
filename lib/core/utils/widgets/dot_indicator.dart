import 'package:flutter/material.dart';

class dotsIndicator extends StatelessWidget {
  const dotsIndicator({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: isActive ? 32 : 8,
      height: 8,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        color: isActive ? Colors.green : Color(0xff191233),
      ),
      duration: Duration(microseconds: 300),
    );
  }
}

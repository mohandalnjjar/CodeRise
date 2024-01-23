import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SecondaryItem extends StatelessWidget {
  const SecondaryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.3 / 2,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xff191233),
              borderRadius: BorderRadius.circular(20),
            ),
            child: SvgPicture.asset(
              'assets/ToDo.svg',
              height: 90,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          const Text('To Do App'),
        ],
      ),
    );
  }
}

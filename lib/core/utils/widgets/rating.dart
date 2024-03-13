import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learn_with_me/core/utils/styles.dart';

class Rating extends StatelessWidget {
  const Rating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          '4.5',
          style: AppStyles.styleMonserateRegular18.copyWith(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        const SizedBox(
          width: 9,
        ),
        Text(
          '(2034)',
          style: AppStyles.styleMonserateRegular14,
        ),
      ],
    );
  }
}

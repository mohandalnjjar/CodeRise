import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(top: 9, left: 23, bottom: 15),
        child: Row(
          children: [
            Text(
              'News',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              FontAwesomeIcons.newspaper,
              color: Color(0xff3f3b4c),
              size: 25,
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomListHeader extends StatelessWidget {
  const CustomListHeader({
    super.key,
    required this.title,
    required this.textButtonTitle,required this.onPressed,
  });

  final String title, textButtonTitle;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 2),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
          ),
          Spacer(),
          TextButton(
            style: TextButton.styleFrom(),
            onPressed: () {},
            child: Text(
              textButtonTitle,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: Colors.green,
              ),
            ),
          )
        ],
      ),
    );
  }
}

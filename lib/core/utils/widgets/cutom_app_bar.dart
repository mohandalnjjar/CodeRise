import 'package:flutter/material.dart';
import 'package:learn_with_me/core/utils/styles.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
    required this.title,
    required this.icon,
    this.onpressed,
    this.IconSize = 24,
  });
  final String title;
  final IconData icon;
  final double IconSize;

  final void Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppStyles.styleSemiBold24,
          ),
          IconButton(
            icon: Icon(
              icon,
              color: Colors.white,
              size: IconSize,
            ),
            onPressed: onpressed,
          ),
        ],
      ),
    );
  }
}

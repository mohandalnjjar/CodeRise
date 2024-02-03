import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
    required this.title,
    required this.icon,
    this.onpressed,
    this.TitleSize = 24,
    this.IconSize = 24,
  });
  final String title;
  final double TitleSize;
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
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: TitleSize),
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

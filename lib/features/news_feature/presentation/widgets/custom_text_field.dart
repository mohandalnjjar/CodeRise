import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(35),
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Colors.blue),
          ),
          prefixIcon: IconButton(
            onPressed: () {},
            icon: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Icon(
                FontAwesomeIcons.magnifyingGlass,
                color: Colors.white,
              ),
            ),
          ),
          hintText: 'Search Now',
          suffixIcon: const SizedBox(
            width: 10,
          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ToDoListItem extends StatelessWidget {
  const ToDoListItem(
      {required this.isChecked, required this.onChange, required this.title});

  final bool? isChecked;
  final void Function(bool?)? onChange;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
            fontSize: 18,
            decoration: isChecked! ? TextDecoration.lineThrough : null),
      ),
      leading: IconButton(
        onPressed: () {},
        icon: Icon(FontAwesomeIcons.xmark),
      ),
      trailing: Checkbox(
        activeColor: Colors.green,
        value: isChecked,
        onChanged: onChange,
      ),
    );
  }
}

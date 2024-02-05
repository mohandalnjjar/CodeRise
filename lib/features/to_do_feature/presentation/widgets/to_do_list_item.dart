import 'package:flutter/material.dart';

class ToDoListItem extends StatelessWidget {
  const ToDoListItem({
    required this.isChecked,
    required this.onChange,
    required this.title,
  });

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
      trailing: Checkbox(
        activeColor: Colors.green,
        value: isChecked,
        onChanged: onChange,
      ),
    );
  }
}

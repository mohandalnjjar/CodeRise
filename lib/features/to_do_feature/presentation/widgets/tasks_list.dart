import 'package:flutter/material.dart';

class TasksList extends StatefulWidget {
  TasksList({
    super.key,
  });

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  bool? IsChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text(
            'this is the first to do ever ',
            style: TextStyle(
              decoration: IsChecked! ? TextDecoration.lineThrough : null,
              fontSize: 19,
            ),
          ),
          trailing: Checkbox(
            activeColor: Colors.green,
            value: IsChecked,
            onChanged: (value) {
              setState(
                () {
                  IsChecked = value;
                },
              );
            },
          ),
        ),
      ],
    );
  }
}

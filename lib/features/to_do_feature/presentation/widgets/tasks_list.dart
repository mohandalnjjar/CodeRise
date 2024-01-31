import 'package:flutter/material.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text('data'),
          trailing: Checkbox(
            value: false,
            onChanged: ((value) => {}),
          ),
        ),
      ],
    );
  }
}

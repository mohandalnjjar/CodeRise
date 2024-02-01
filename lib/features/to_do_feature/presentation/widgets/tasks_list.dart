import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
            'Go to shop ,buy new tyires for my car and stay behind the nile for one hour',
            style: TextStyle(
              decoration: IsChecked! ? TextDecoration.lineThrough : null,
              fontSize: 19,
            ),
          ),
          leading: IconButton(
            icon: Icon(FontAwesomeIcons.xmark),
            onPressed: () {},
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

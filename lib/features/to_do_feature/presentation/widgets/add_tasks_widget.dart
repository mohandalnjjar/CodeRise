import 'package:flutter/material.dart';

class AddTasksWidget extends StatelessWidget {
  const AddTasksWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 243, 228, 228),
      child: Column(
        children: [
          Text(
            'Add Task',
            style: TextStyle(color: Colors.black),
          ),
          TextField(),
          TextButton(
              onPressed: () {},
              child: Text(
                'Add',
                style: TextStyle(color: Colors.black),
              )) 
        ],
      ),
    );
  }
}

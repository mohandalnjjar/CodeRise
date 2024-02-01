import 'package:flutter/material.dart';
import 'package:learn_with_me/constance.dart';

class AddTasksWidget extends StatelessWidget {
  const AddTasksWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: TextField(
              textAlign: TextAlign.center,
              autofocus: true,
              decoration: InputDecoration(
                hintText: 'New To Do',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Add',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            style: TextButton.styleFrom(
              backgroundColor: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}

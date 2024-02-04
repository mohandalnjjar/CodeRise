import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learn_with_me/core/utils/constance.dart';

class ShowModalButtomSheet extends StatelessWidget {
  const ShowModalButtomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: const Text(
              'Add Task',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
            ),
            child: TextFormField(
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'What to do ?',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: Colors.white,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.blue),
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
                fontSize: 17,
              ),
            ),
            style: TextButton.styleFrom(backgroundColor: Colors.green),
          ),
        ],
      ),
    );
  }
}

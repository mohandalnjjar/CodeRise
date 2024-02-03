import 'package:flutter/material.dart';
import 'package:learn_with_me/core/utils/constance.dart';
import 'package:learn_with_me/features/to_do_feature/widgets/to_do_body.dart';

class ToDoview extends StatelessWidget {
  const ToDoview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ToDoViewBody(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
        backgroundColor: kPrimaryColor,
      ),
    );
  }
}

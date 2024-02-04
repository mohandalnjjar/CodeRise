import 'package:flutter/material.dart';
import 'package:learn_with_me/features/to_do_feature/presentation/widgets/to_do_list_item.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({
    super.key,
  });

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => ToDoListItem(
        title: 'mohaand loves mai',
        isChecked: false,
        onChange: (value) {
          setState(() {});
        },
      ),
    );
  }
}

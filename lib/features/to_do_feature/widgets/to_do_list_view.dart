import 'package:flutter/material.dart';
import 'package:learn_with_me/features/to_do_feature/models/to_do_model.dart';
import 'package:learn_with_me/features/to_do_feature/widgets/to_do_list_item.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({
    super.key,
    required this.todomodel,
  });

  @override
  State<ToDoList> createState() => _ToDoListState();
  final List<ToDoModel> todomodel;
}

class _ToDoListState extends State<ToDoList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.todomodel.length,
      itemBuilder: (context, index) => ToDoListItem(
        title: widget.todomodel[index].title,
        isChecked: widget.todomodel[index].isDone,
        onChange: (value) {
          setState(() {
            widget.todomodel[index].isDone = value;
          });
        },
      ),
    );
  }
}

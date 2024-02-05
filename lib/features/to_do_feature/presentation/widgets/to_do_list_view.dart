import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_with_me/features/to_do_feature/data/models/to_do_model.dart';
import 'package:learn_with_me/features/to_do_feature/presentation/manager/fetch_to_do_cubit/fetch_to_do_cubit_cubit.dart';
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
    List<ToDoModel>? ToDos = BlocProvider.of<FetchToDoCubit>(context).ToDoList;

    return BlocBuilder<FetchToDoCubit, FetchToDoCubitState>(
      builder: (context, state) {
        return ListView.builder(
          itemCount: ToDos!.length,
          itemBuilder: (context, index) => ToDoListItem(
            onPressd: () {
              ToDos[index].delete();
              BlocProvider.of<FetchToDoCubit>(context).FetchToDoMehod();
              setState(() {});
            },
            title: ToDos[index].title,
            isChecked: ToDos[index].isDone,
            onChange: (value) {
              setState(() {
                ToDos[index].isDoneMethod();
                ToDos[index].save();
              });
            },
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learn_with_me/features/to_do_feature/data/models/to_do_model.dart';
import 'package:learn_with_me/features/to_do_feature/presentation/manager/fetch_to_do_cubit/fetch_to_do_cubit.dart';
import 'package:learn_with_me/features/to_do_feature/presentation/widgets/to_to_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchToDoCubit, FetchToDoState>(
      builder: (context, state) {
        List<ToDoModel> todolist =
            BlocProvider.of<FetchToDoCubit>(context).ToDoList ?? [];
        return ListView.builder(
          itemCount: todolist.length,
          itemBuilder: (context, index) {
            return ToDoTile(
              ToDoData: todolist[index],
            );
          },
        );
      },
    );
  }
}

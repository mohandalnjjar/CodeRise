import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learn_with_me/features/to_do_feature/data/models/to_do_model.dart';
import 'package:learn_with_me/features/to_do_feature/presentation/manager/fetch_to_do_cubit/fetch_to_do_cubit.dart';

class ToDoTile extends StatelessWidget {
  const ToDoTile({super.key, required this.ToDoData});
  final ToDoModel ToDoData;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          IconButton(
            icon: Icon(FontAwesomeIcons.xmark),
            onPressed: () {
              ToDoData.delete();
              BlocProvider.of<FetchToDoCubit>(context).FetchToDo();
            },
          ),
          ListTile(
            title: Text(
              ToDoData.title,
              style: TextStyle(
                fontSize: 19,
              ),
            ),
          ),
          Checkbox(
            activeColor: Colors.green,
            value: true,
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:learn_with_me/core/utils/constance.dart';
import 'package:learn_with_me/core/utils/widgets/cutom_app_bar.dart';
import 'package:learn_with_me/features/to_do_feature/models/to_do_model.dart';
import 'package:learn_with_me/features/to_do_feature/widgets/to_do_list_view.dart';

class ToDoViewBody extends StatelessWidget {
  const ToDoViewBody();

  @override
  Widget build(BuildContext context) {
    final List<ToDoModel> todomodel = [
      ToDoModel(title: 'mohanad'),
      ToDoModel(title: 'Mohamed'),
      ToDoModel(title: 'Loves'),
      ToDoModel(title: 'Mai'),
      ToDoModel(title: 'Medahat'),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SafeArea(
          child: CustomAppbar(
            title: 'TO Do Day',
            icon: Icons.playlist_add_check,
            IconSize: 35,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 17),
          child: Text(
            '5 Tasks',
            style: TextStyle(fontSize: 20),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 50),
            decoration: BoxDecoration(
              color: kSecondPrimaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: ToDoList(
              todomodel: todomodel,
            ),
          ),
        )
      ],
    );
  }
}

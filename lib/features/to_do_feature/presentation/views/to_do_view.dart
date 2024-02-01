import 'package:flutter/material.dart';
import 'package:learn_with_me/constance.dart';
import 'package:learn_with_me/core/utils/widgets/app_bar.dart';
import 'package:learn_with_me/features/to_do_feature/presentation/widgets/add_tasks_widget.dart';
import 'package:learn_with_me/features/to_do_feature/presentation/widgets/tasks_list.dart';

class ToDoHomeView extends StatelessWidget {
  const ToDoHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
              backgroundColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom,
                    ),
                    child: AddTasksWidget(),
                  ),
                );
              });
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(
            child: CustomAppbar(
              title: 'TO Do Day',
              icon: Icons.playlist_add_check,
              IconSize: 40,
              onpressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              '4 Tasks',
              style: TextStyle(
                fontSize: 19,
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(
                bottom: 50,
                top: 20,
                left: 15,
                right: 15,
              ),
              decoration: BoxDecoration(
                color: kSecondPrimaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TasksList(),
            ),
          )
        ],
      ),
    );
  }
}

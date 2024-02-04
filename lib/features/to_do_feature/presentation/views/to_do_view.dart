import 'package:flutter/material.dart';
import 'package:learn_with_me/core/utils/constance.dart';
import 'package:learn_with_me/features/to_do_feature/presentation/widgets/show_modal_buttom_sheet.dart';
import 'package:learn_with_me/features/to_do_feature/presentation/widgets/to_do_body.dart';

class ToDoview extends StatelessWidget {
  const ToDoview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const ToDoViewBody(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            context: context,
            builder: (context) {
              return SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                  ),
                  child: const ShowModalButtomSheet(),
                ),
              );
            },
          );
        },
        child: const Icon(Icons.add),
        backgroundColor: kPrimaryColor,
      ),
    );
  }
}

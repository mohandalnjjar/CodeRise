import 'package:flutter/material.dart';
import 'package:learn_with_me/constance.dart';
import 'package:learn_with_me/core/utils/widgets/custome_button.dart';
import 'package:learn_with_me/core/utils/widgets/custome_text_form_field.dart';

class AddTasksWidget extends StatelessWidget {
  const AddTasksWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(20),
      child: ToDoForm(),
    );
  }
}

class ToDoForm extends StatefulWidget {
  const ToDoForm({
    super.key,
  });

  @override
  State<ToDoForm> createState() => _ToDoFormState();
}

class _ToDoFormState extends State<ToDoForm> {
  final GlobalKey<FormState> FormKkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: FormKkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Add Task',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: CustomTextFormField(
              hint: 'New To Do',
              onSaved: (value) {
                title = value;
              },
            ),
          ),
          CustomeButton(
            title: 'Add',
            onPressed: () {
              if (FormKkey.currentState!.validate()) {
                FormKkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
              }
            },
          ),
        ],
      ),
    );
  }
}

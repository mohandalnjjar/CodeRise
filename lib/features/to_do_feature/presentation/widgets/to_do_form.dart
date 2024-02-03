import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_with_me/core/utils/widgets/custome_button.dart';
import 'package:learn_with_me/core/utils/widgets/custome_text_form_field.dart';
import 'package:learn_with_me/features/to_do_feature/data/models/to_do_model.dart';
import 'package:learn_with_me/features/to_do_feature/presentation/manager/add_to_do_cubit/add_to_do_cubit.dart';

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
          CustomButton(
            title: 'Add',
            onPressed: () {
              if (FormKkey.currentState!.validate()) {
                FormKkey.currentState!.save();

                BlocProvider.of<ToDoCubit>(context).AddToDoMethod(todo: ToDoModel(title: title!));
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

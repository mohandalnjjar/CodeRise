import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_with_me/features/to_do_feature/data/models/to_do_model.dart';
import 'package:learn_with_me/features/to_do_feature/presentation/manager/add_to_do_cubit/add_to_do_cubit.dart';
import 'package:learn_with_me/features/to_do_feature/presentation/widgets/custom_text_form_field.dart';

class ToDoForm extends StatefulWidget {
  const ToDoForm({super.key});

  @override
  State<ToDoForm> createState() => _ToDoFormState();
}

class _ToDoFormState extends State<ToDoForm> {
  final GlobalKey<FormState> FormKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: FormKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 5),
            child: Text(
              'Add Task',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
            ),
            child: CustomTextFromField(
              hint: 'What to do ?',
              onSaved: (value) {
                title = value;
              },
            ),
          ),
          TextButton(
            onPressed: () {
              if (FormKey.currentState!.validate()) {
                FormKey.currentState!.save();
                BlocProvider.of<AddToDoCubit>(context)
                    .AddToDoMethod(ToDoModel(title: title!));

              } else {
                setState(() {
                  autovalidateMode = AutovalidateMode.always;
                });
              }
            },
            child: BlocBuilder<AddToDoCubit, AddToDoState>(
              builder: (context, state) {
                if (state is AddToDoLoading) {
                  return Text('laoding');
                } else {
                  return Text(
                    'Add',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  );
                }
              },
            ),
            style: TextButton.styleFrom(backgroundColor: Colors.green),
          ),
        ],
      ),
    );
  }
}

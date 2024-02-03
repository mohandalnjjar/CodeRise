import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_with_me/features/to_do_feature/presentation/manager/fetch_to_do_cubit/fetch_to_do_cubit.dart';
import 'package:learn_with_me/features/to_do_feature/presentation/views/to_do_view_body.dart';

class ToDoView extends StatelessWidget {
  const ToDoView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FetchToDoCubit()..FetchToDo(),
      child: ToDoViewBody(),
    );
  }
}

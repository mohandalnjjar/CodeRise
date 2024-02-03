import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_with_me/core/utils/constance.dart';
import 'package:learn_with_me/core/utils/widgets/error_snack_bar.dart';
import 'package:learn_with_me/features/to_do_feature/data/models/repos/to_do_rep_impl.dart';
import 'package:learn_with_me/features/to_do_feature/presentation/manager/add_to_do_cubit/add_to_do_cubit.dart';
import 'package:learn_with_me/features/to_do_feature/presentation/manager/fetch_to_do_cubit/fetch_to_do_cubit.dart';
import 'package:learn_with_me/features/to_do_feature/presentation/widgets/to_do_form.dart';

class ToDoButtonSheet extends StatelessWidget {
  const ToDoButtonSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: BlocProvider(
        create: (context) => ToDoCubit(TodoImpl()),
        child: Container(
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.all(20),
          child: BlocConsumer<ToDoCubit, ToDoState>(
            listener: (context, state) {
              if (state is ToDoSuccess) {
                BlocProvider.of<FetchToDoCubit>(context).FetchToDo();

                context.pop();
              }
            },
            builder: (context, state) {
              if (state is ToDoFailure) {
                return ErrorSnackBar(errorMessage: state.Failure);
              } else if (state is ToDoLoading) {
                return Text('laoding');
              } else {
                return ToDoForm();
              }
            },
          ),
        ),
      ),
    );
  }
}

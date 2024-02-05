import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_with_me/core/utils/constance.dart';
import 'package:learn_with_me/features/to_do_feature/data/models/repository/to_to_repo_impl.dart';
import 'package:learn_with_me/features/to_do_feature/presentation/manager/add_to_do_cubit/add_to_do_cubit.dart';
import 'package:learn_with_me/features/to_do_feature/presentation/manager/fetch_to_do_cubit/fetch_to_do_cubit_cubit.dart';
import 'package:learn_with_me/features/to_do_feature/presentation/widgets/to_do_botton_sheet_form.dart';

class ShowModalButtomSheet extends StatefulWidget {
  const ShowModalButtomSheet({
    super.key,
  });

  @override
  State<ShowModalButtomSheet> createState() => _ShowModalButtomSheetState();
}

class _ShowModalButtomSheetState extends State<ShowModalButtomSheet> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddToDoCubit(
        toDoRepoImpl: ToDoRepoImpl(),
      ),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: BlocConsumer<AddToDoCubit, AddToDoState>(
          listener: (context, state) {
            if (state is AddToDoSuccess) {
              BlocProvider.of<FetchToDoCubit>(context).FetchToDoMehod();
              context.pop();
            }
            if (state is AddToDoFailure) {
              print(state.ErrorMessage);
            }
          },
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state is AddToDoLoading ? true : false,
              child: ToDoForm(),
            );
          },
        ),
      ),
    );
  }
}

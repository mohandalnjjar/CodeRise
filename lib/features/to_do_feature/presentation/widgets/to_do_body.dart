import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_with_me/core/utils/constance.dart';
import 'package:learn_with_me/core/utils/widgets/cutom_app_bar.dart';
import 'package:learn_with_me/features/to_do_feature/presentation/manager/clear_to_do_list_cubit/clear_to_do_list_cubit.dart';
import 'package:learn_with_me/features/to_do_feature/presentation/manager/fetch_to_do_cubit/fetch_to_do_cubit_cubit.dart';
import 'package:learn_with_me/features/to_do_feature/presentation/widgets/to_do_list_view.dart';

class ToDoViewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchToDoCubit, FetchToDoCubitState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: CustomAppbar(
                  title: 'TO Do Day',
                  icon: Icons.playlist_add_check,
                  IconSize: 35,
                  onpressed: () async {
                    await BlocProvider.of<ClearToDoListCubit>(context)
                        .ClearToDoMethod();
                    BlocProvider.of<FetchToDoCubit>(context).FetchToDoMehod();
                  }),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 17),
              child: Text(
                '${BlocProvider.of<FetchToDoCubit>(context).listNum} Jobs',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(
                    top: 20, left: 15, right: 15, bottom: 50),
                decoration: BoxDecoration(
                  color: kSecondPrimaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ToDoList(),
              ),
            )
          ],
        );
      },
    );
  }
}

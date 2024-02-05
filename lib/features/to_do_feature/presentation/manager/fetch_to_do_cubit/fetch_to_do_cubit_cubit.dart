import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:learn_with_me/core/utils/constance.dart';
import 'package:learn_with_me/features/to_do_feature/data/models/to_do_model.dart';
import 'package:meta/meta.dart';

part 'fetch_to_do_cubit_state.dart';

class FetchToDoCubit extends Cubit<FetchToDoCubitState> {
  FetchToDoCubit() : super(FetcToDoCubitInitial());
  List<ToDoModel>? ToDoList;
  FetchToDoMehod() {
    var ToDoBox = Hive.box<ToDoModel>(KToDoBox);
    ToDoList = ToDoBox.values.toList();
    emit(
      FetchToDoCubitSuccess(),
    );
  }
}

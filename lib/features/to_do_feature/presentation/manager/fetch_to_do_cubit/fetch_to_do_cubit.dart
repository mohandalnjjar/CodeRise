import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:learn_with_me/core/utils/constance.dart';
import 'package:learn_with_me/features/to_do_feature/data/models/to_do_model.dart';
import 'package:meta/meta.dart';

part 'fetch_to_do_state.dart';

class FetchToDoCubit extends Cubit<FetchToDoState> {
  FetchToDoCubit() : super(FetchToDoInitial());
  List<ToDoModel>? ToDoList;

  void FetchToDo() {
    var ToDoBox = Hive.box<ToDoModel>(KToDoBox);
    ToDoList = ToDoBox.values.toList();
    emit(
      FetchToDoSuccess(),
    );
  }
}

import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:learn_with_me/core/utils/constance.dart';
import 'package:learn_with_me/features/to_do_feature/data/models/to_do_model.dart';
import 'package:meta/meta.dart';

part 'clear_to_do_list_state.dart';

class ClearToDoListCubit extends Cubit<ClearToDoListState> {
  ClearToDoListCubit() : super(ClearToDoListInitial());

  ClearToDoMethod() async {
    var ToDoBox = Hive.box<ToDoModel>(KToDoBox);
    await ToDoBox.clear();
  }
}

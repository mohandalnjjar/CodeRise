import 'package:bloc/bloc.dart';
import 'package:learn_with_me/features/to_do_feature/data/models/repos/to_do_rep_impl.dart';
import 'package:learn_with_me/features/to_do_feature/data/models/to_do_model.dart';
import 'package:meta/meta.dart';

part 'add_to_do_state.dart';

class ToDoCubit extends Cubit<ToDoState> {
  ToDoCubit(this.implementation) : super(ToDoInitial());
  final TodoImpl implementation;
  Future<void> AddToDoMethod({required ToDoModel todo}) async {
    emit(
      ToDoLoading(),
    );
    var Result = await implementation.AddToDoMethod(todo);

    Result.fold(
      (left) => emit(
        ToDoFailure(Failure: left.errorMessage),
      ),
      (right) => emit(
        ToDoSuccess(),
      ),
    );
  }
}

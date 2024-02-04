import 'package:bloc/bloc.dart';
import 'package:learn_with_me/features/to_do_feature/data/models/repository/to_to_repo_impl.dart';
import 'package:learn_with_me/features/to_do_feature/data/models/to_do_model.dart';
import 'package:meta/meta.dart';

part 'add_to_do_state.dart';

class AddToDoCubit extends Cubit<AddToDoState> {
  AddToDoCubit({required this.toDoRepoImpl}) : super(AddToDoInitial());

  final ToDoRepoImpl toDoRepoImpl;

  Future<void> AddToDoMethod(ToDoModel toDo) async {
    emit(AddToDoLoading());

    var Result = await toDoRepoImpl.AddToDo(toDo);
    Result.fold((failure) {
      emit(
        AddToDoFailure(ErrorMessage: failure.errorMessage),
      );
    }, (Right) {
      emit(
        AddToDoSuccess(),
      );
    });
  }
}

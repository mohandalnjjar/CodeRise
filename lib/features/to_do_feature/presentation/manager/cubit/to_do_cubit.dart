import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'to_do_state.dart';

class ToDoCubit extends Cubit<ToDoState> {
  ToDoCubit() : super(ToDoInitial());
}

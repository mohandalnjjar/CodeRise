import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_to_do_state.dart';

class AddToDoCubit extends Cubit<AddToDoState> {
  AddToDoCubit() : super(AddToDoInitial());
}

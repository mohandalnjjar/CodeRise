part of 'add_to_do_cubit.dart';

@immutable
sealed class ToDoState {}

final class ToDoInitial extends ToDoState {}

final class ToDoLoading extends ToDoState {}

final class ToDoSuccess extends ToDoState {}

final class ToDoFailure extends ToDoState {
  final String Failure;

  ToDoFailure({required this.Failure});
}

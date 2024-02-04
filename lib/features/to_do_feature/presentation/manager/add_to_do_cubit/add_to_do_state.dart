part of 'add_to_do_cubit.dart';

@immutable
sealed class AddToDoState {}

final class AddToDoInitial extends AddToDoState {}

final class AddToDoLoading extends AddToDoState {}

final class AddToDoSuccess extends AddToDoState {}

final class AddToDoFailure extends AddToDoState {
  final String ErrorMessage;

  AddToDoFailure({required this.ErrorMessage});
}

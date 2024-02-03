part of 'fetch_to_do_cubit.dart';

@immutable
sealed class FetchToDoState {}

final class FetchToDoInitial extends FetchToDoState {}

final class FetchToDoSuccess extends FetchToDoState {}

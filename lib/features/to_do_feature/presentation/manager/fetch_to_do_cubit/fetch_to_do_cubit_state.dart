part of 'fetch_to_do_cubit_cubit.dart';

@immutable
sealed class FetchToDoCubitState {}

final class FetcToDoCubitInitial extends FetchToDoCubitState {}

final class FetchToDoCubitSuccess extends FetchToDoCubitState {}

part of 'fetch_news_cubit.dart';

abstract class FetchnewsState {}

class FetchnewsInitial extends FetchnewsState {}

class FetchNewsLoading extends FetchnewsState {}

class FetchnewsFailure extends FetchnewsState {
  final String errorMesaage;

  FetchnewsFailure({required this.errorMesaage});
}

class FetchnewsScucces extends FetchnewsState {
  final List<NewsModel> newsData;

  FetchnewsScucces({required this.newsData});
}

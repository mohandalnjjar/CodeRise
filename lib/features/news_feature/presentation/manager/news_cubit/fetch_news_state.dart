part of 'fetch_news_cubit.dart';

abstract class FetchNewsState {}

class FetchnewsInitial extends FetchNewsState {}

class FetchNewsLoading extends FetchNewsState {}

class FetchNewsFailure extends FetchNewsState {
  final String errorMesaage;

  FetchNewsFailure({required this.errorMesaage});
}

class FetchNewsScucces extends FetchNewsState {
  final List<NewsModel> newsData;

  FetchNewsScucces({required this.newsData});
}

import 'package:dartz/dartz.dart';
import 'package:learn_with_me/core/errors/failures.dart';
import 'package:learn_with_me/core/utils/api_services.dart';
import 'package:learn_with_me/features/news_feature/data/models/news_model.dart';
import 'package:learn_with_me/features/news_feature/data/models/repos/news_Repo.dart';

class HomeRepo implements NewsRpo {
  final ApiService apiService;

  HomeRepo({required this.apiService});
  @override
  Future<Either<Failure, List<NewsModel>>> fetchNews() async {
    try {
      var data = await apiService.Get(
          endPoint:
              'everything?q=technology&apiKey=40774af98d82483b8f73edbc0b3e8199');
      List<NewsModel> newsData = [];
      for (var item in data['articles']) {
        newsData.add(NewsModel.fromJson(item));
      }
      return right(newsData);
    } catch (e) {
      return left(
        serverFailure(),
      );
    }
  }
}

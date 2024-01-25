import 'package:dartz/dartz.dart';
import 'package:learn_with_me/core/errors/failures.dart';
import 'package:learn_with_me/features/news_feature/data/models/news_model.dart';
import 'package:learn_with_me/features/news_feature/data/models/repos/news_Repo.dart';

class HomeRepo implements NewsRpo {
  @override
  Future<Either<Failure, List<NewsModel>>> fetchNews() {
  }
}

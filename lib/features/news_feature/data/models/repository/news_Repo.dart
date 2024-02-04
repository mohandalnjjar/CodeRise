import 'package:dartz/dartz.dart';
import 'package:learn_with_me/core/errors/failures.dart';
import 'package:learn_with_me/features/news_feature/data/models/news_model.dart';

abstract class NewsRpo {
  Future<Either<Failure, List<NewsModel>>> fetchNews();
}

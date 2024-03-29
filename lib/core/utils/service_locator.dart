import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:learn_with_me/core/utils/api_services.dart';
import 'package:learn_with_me/features/news_feature/data/models/repository/news_repo_impl.dart';

final getit = GetIt.instance;

void Locator() {
  getit.registerSingleton<NewsRepoImpl>(
    NewsRepoImpl(
      apiService: ApiService(
        dio: Dio(),
      ),
    ),
  );
}

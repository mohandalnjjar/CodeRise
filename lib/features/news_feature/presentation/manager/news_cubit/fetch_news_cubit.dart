import 'package:bloc/bloc.dart';
import 'package:learn_with_me/features/news_feature/data/models/news_model.dart';
import 'package:learn_with_me/features/news_feature/data/models/repository/news_repo_impl.dart';

part 'fetch_news_state.dart';

class FetchNewsCubit extends Cubit<FetchNewsState> {
  FetchNewsCubit(this.newsRepo) : super(FetchnewsInitial());

  final NewsRepoImpl newsRepo;
  Future<void> fetchNewsMethod() async {
    emit(
      FetchNewsLoading(),
    );

    var Result = await newsRepo.fetchNews();

    Result.fold((failure) {
      emit(
        FetchNewsFailure(errorMesaage: failure.errorMessage),
      );
    }, (news) {
      emit(
        FetchNewsScucces(newsData: news),
      );
    });
  }
}

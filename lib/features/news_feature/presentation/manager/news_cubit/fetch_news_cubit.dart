import 'package:bloc/bloc.dart';
import 'package:learn_with_me/features/news_feature/data/models/news_model.dart';
import 'package:learn_with_me/features/news_feature/data/models/repos/news_repo_impl.dart';

part 'fetch_news_state.dart';

class FetchnewsCubit extends Cubit<FetchnewsState> {
  FetchnewsCubit(this.homeRepo) : super(FetchnewsInitial());

  final NewsRepoImpl homeRepo;
  Future<void> fetchNews() async {
    emit(
      FetchNewsLoading(),
    );

    var Result = await homeRepo.fetchNews();

    Result.fold((failure) {
      emit(
        FetchnewsFailure(errorMesaage: failure.errorMessage),
      );
    }, (news) {
      emit(
        FetchnewsScucces(newsData: news),
      );
    });
  }
}

import 'package:bloc/bloc.dart';
import 'package:learn_with_me/features/news_feature/data/models/news_model.dart';
import 'package:meta/meta.dart';

part 'fetch_news_state.dart';

class FetchnewsCubit extends Cubit<FetchnewsState> {
  FetchnewsCubit() : super(FetchnewsInitial());



}

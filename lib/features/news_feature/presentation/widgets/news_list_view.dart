import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_with_me/core/utils/widgets/sliver_error_snack_bar.dart';
import 'package:learn_with_me/features/news_feature/presentation/manager/news_cubit/fetch_news_cubit.dart';
import 'package:learn_with_me/features/news_feature/presentation/widgets/news_Item.dart';
import 'package:learn_with_me/features/news_feature/presentation/widgets/news_loading_indicator.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchNewsCubit, FetchNewsState>(
      builder: (context, state) {
        if (state is FetchNewsScucces) {
          return SliverList.builder(
            itemBuilder: ((context, index) {
              return NewsItem(
                NewsModelData: state.newsData[index],
              );
            }),
            itemCount: state.newsData.length,
          );
        } else if (state is FetchNewsFailure) {
          return ErrorSnackBar(errorMessage: state.errorMesaage);
        } else {
          return ShimmerLaodingIndicator();
        }
      },
    );
  }
}

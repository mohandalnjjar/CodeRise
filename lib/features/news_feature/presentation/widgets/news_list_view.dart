import 'package:flutter/material.dart';
import 'package:learn_with_me/features/news_feature/presentation/widgets/news_Item.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: ((context, index) {
        return NewsItem();
      }),
      itemCount: 10,
    );
  }
}

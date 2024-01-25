import 'package:flutter/material.dart';
import 'package:learn_with_me/features/news_feature/presentation/widgets/news_Item.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: ((context, index) {
        return const NewsItem();
      }),
      itemCount: 20,
    );
  }
}
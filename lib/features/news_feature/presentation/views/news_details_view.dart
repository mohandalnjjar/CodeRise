import 'package:flutter/material.dart';
import 'package:learn_with_me/features/news_feature/data/models/news_model.dart';
import 'package:learn_with_me/features/news_feature/presentation/widgets/news_deatials_view_body.dart';

class NewsDetailsView extends StatelessWidget {
  const NewsDetailsView({super.key, required this.newsModel});
  final NewsModel newsModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NewsDetailsViewBody(
        newsModel: newsModel,
      ),
    );
  }
}

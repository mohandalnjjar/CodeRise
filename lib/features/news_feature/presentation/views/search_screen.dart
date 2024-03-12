import 'package:flutter/material.dart';
import 'package:learn_with_me/features/news_feature/presentation/widgets/custom_text_field.dart';
import 'package:learn_with_me/features/news_feature/presentation/widgets/search_news_list_view.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Row(
                  children: [
                    Expanded(
                      child: CustomSearchFiled(),
                    ),
                  ],
                ),
              ),
            ),
            SearchListView(),
          ],
        ),
      ),
    );
  }
}

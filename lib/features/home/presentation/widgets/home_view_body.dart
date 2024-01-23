import 'package:flutter/material.dart';
import 'package:learn_with_me/features/home/presentation/widgets/custome_appbar.dart';
import 'package:learn_with_me/features/home/presentation/widgets/second_item_list_view.dart';
import 'package:learn_with_me/features/news_feature/presentation/widgets/news_list_view.dart';

import 'careers_list_view.dart';
import 'custom_text.dart';

class HomeViweBody extends StatelessWidget {
  const HomeViweBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
        child: CustomAppbar(),
        ),
        SliverToBoxAdapter(
          child: CareersListView(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 25,
          ),
        ),
        SliverToBoxAdapter(
          child: SecondList(),
        ),
        SliverToBoxAdapter(
          child: CustomText(),
        ),
        NewsListView(),
      ],
    );
  }
}
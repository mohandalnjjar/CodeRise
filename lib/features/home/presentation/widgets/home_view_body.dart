import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_with_me/core/utils/constance.dart';
import 'package:learn_with_me/core/utils/widgets/cutom_app_bar.dart';
import 'package:learn_with_me/features/home/presentation/widgets/second_item_list_view.dart';
import 'package:learn_with_me/features/news_feature/presentation/widgets/news_list_view.dart';

import 'careers_list_view.dart';
import 'custom_text.dart';

class HomeViweBody extends StatelessWidget {
  const HomeViweBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: CustomAppbar(
            title: 'Code Rise',
            onpressed: () {
              GoRouter.of(context).push(kSearchScreenRouter);
            },
            icon: FontAwesomeIcons.magnifyingGlass,
          ),
        ),
        const SliverToBoxAdapter(
          child: CareersListView(),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 25,
          ),
        ),
        const SliverToBoxAdapter(
          child: SecondList(),
        ),
        const SliverToBoxAdapter(
          child: CustomText(),
        ),
        NewsListView(),
      ],
    );
  }
}

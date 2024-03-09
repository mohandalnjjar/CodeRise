import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:learn_with_me/core/utils/widgets/custom_card.dart';
import 'package:learn_with_me/features/home/data/models/second_list_view_mode.dart';

class MyCardPageView extends StatelessWidget {
  const MyCardPageView({
    super.key,
    required this.DataList,
    required this.controller,
  });

  final List<careersPageViewModel> DataList;
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: controller,
      physics: const BouncingScrollPhysics(),
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 9),
          child: CardImage(
            data: DataList[index],
          ),
        ),
      ),
    );
  }
}

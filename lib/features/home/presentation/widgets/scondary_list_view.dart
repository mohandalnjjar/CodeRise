import 'package:flutter/material.dart';
import 'package:learn_with_me/features/home/presentation/widgets/second_list_item.dart';

class ScondaryListView extends StatelessWidget {
  const ScondaryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: ((context, index) {
        return SecondaryItem();
      }),
      itemCount: 10,
    );
  }
}

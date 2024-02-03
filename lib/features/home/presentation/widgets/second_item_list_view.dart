import 'package:flutter/material.dart';
import 'package:learn_with_me/features/home/data/models/second_list_view_mode.dart';
import 'package:learn_with_me/features/home/presentation/widgets/second_list_item.dart';

class SecondList extends StatelessWidget {
  SecondList({super.key});

  @override
  Widget build(BuildContext context) {
    final List DataList = [
      SecondListViewModel(
        Image: 'assets/trouble.png',
        Ttile: 'TO Do',
        OnPressd: () {},
      ),
      SecondListViewModel(
        Image: 'assets/chat-gpt.png',
        Ttile: 'Ai Chat',
        OnPressd: () {},
      ),
      SecondListViewModel(
        Image: 'assets/education.png',
        Ttile: 'Books',
        OnPressd: () {},
      ),
    ];
    return SizedBox(
      height: MediaQuery.of(context).size.height * .140,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21),
            child: SecondaryItem(
              data: DataList[index],
            ),
          );
        },
        itemCount: DataList.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

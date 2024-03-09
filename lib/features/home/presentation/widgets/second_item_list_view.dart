import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_with_me/core/utils/constance.dart';
import 'package:learn_with_me/features/home/data/models/second_list_view_mode.dart';
import 'package:learn_with_me/features/home/presentation/widgets/second_list_item.dart';

class SecondList extends StatelessWidget {
  const SecondList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<careersPageViewModel> DataList = [
      careersPageViewModel(
        Image: 'assets/images/second_list_images/to_do.png',
        title: 'To Do',
        OnPressd: () {
          GoRouter.of(context).push(kTODoHomeView);
        },
      ),
      careersPageViewModel(
        Image: 'assets/images/second_list_images/chat_gpt.png',
        title: 'Ai Chat',
        OnPressd: () {},
      ),
      careersPageViewModel(
        Image: 'assets/images/second_list_images/books.png',
        title: 'Books',
        OnPressd: () {
          GoRouter.of(context).push(KBookHomeView);
        },
      ),
    ];
    return SizedBox(
      height: MediaQuery.of(context).size.height * .140,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21),
            child: SecondListItem(
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

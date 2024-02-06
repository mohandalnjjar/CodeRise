import 'package:flutter/material.dart';
import 'package:learn_with_me/core/utils/widgets/custom_card.dart';
import 'package:learn_with_me/features/home/data/models/second_list_view_mode.dart';

class CareersListView extends StatelessWidget {
  const CareersListView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ListViewModelData> DataList = [
      ListViewModelData(
        Image: 'assets/images/carres_list_images/web.jpg',
        title: 'Web Development',
        OnPressd: () {},
      ),
      ListViewModelData(
        Image: 'assets/images/carres_list_images/mobile.jpg',
        title: 'Mobile Development',
        OnPressd: () {},
      ),
      ListViewModelData(
        Image: 'assets/images/carres_list_images/propramming.jpg',
        title: 'programming lang',
        OnPressd: () {},
      ),
    ];
    return SizedBox(
      height: MediaQuery.of(context).size.height * .18,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: CardImage(
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

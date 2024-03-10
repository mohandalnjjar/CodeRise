import 'package:flutter/material.dart';
import 'package:learn_with_me/core/utils/widgets/dots_indicator_list.dart';
import 'package:learn_with_me/features/home/data/models/second_list_view_mode.dart';
import 'package:learn_with_me/features/home/presentation/widgets/my_card_Page_view.dart';

class myCardSection extends StatefulWidget {
  const myCardSection({super.key});

  @override
  State<myCardSection> createState() => _myCardSectionState();
}

class _myCardSectionState extends State<myCardSection> {
  late PageController controller;
  int currentPageIndex = 0;
  @override
  void initState() {
    controller = PageController();
    controller.addListener(() {
      currentPageIndex = controller.page!.round();
      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<careersPageViewModel> DataList = [
      careersPageViewModel(
        Image: 'assets/images/page_view_images/mobile.jpg',
        title: 'Mobile Development',
        OnPressd: () {},
      ),
      careersPageViewModel(
        Image: 'assets/images/page_view_images/propramming.jpg',
        title: 'Computer Science',
        OnPressd: () {},
      ),
      careersPageViewModel(
        Image: 'assets/images/page_view_images/web.jpg',
        title: 'Web Development',
        OnPressd: () {},
      ),
    ];

    return Column(
      children: [
        MyCardPageView(
          DataList: DataList,
          controller: controller,
        ),
        const SizedBox(
          height: 14,
        ),
        DotIndicatorList(
          CurrentPageIndex: currentPageIndex,
        ),
      ],
    );
  }
}

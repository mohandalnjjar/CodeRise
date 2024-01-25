import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_with_me/core/utils/styles.dart';
import 'package:learn_with_me/core/utils/widgets/app_bar.dart';
import 'package:learn_with_me/core/utils/widgets/custom_card.dart';

class NewsDetailsViewBody extends StatelessWidget {
  const NewsDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: CustomAppbar(
              title: 'Details',
              IconSize: 22,
              icon: FontAwesomeIcons.x,
              onpressed: () {
               context.pop();
              },
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'We found the smartest gadgets for every room in your home ',
                    style: Styles.BigTitle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Author: Karissa Bell',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    'Posted At: 2023-1-24',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CardImage(),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Description:',
                    style: Styles.BigTitle,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Just a few days ago, OpenAI usage policies page explicitly states that the company prohibits the use of its technology for military and warfare purposes. That line has since been deleted. As first noticed by The Intercept, the company updated the page',
                    style: Styles.MediumTitle,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Content',
                    style: Styles.BigTitle,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Just a few days ago, OpenAIs usage policies page explicitly states that the company prohibits the use of its technology for "military and warfare" purposes. That line has since been deleted. As firs… [+2041 chars]',
                    style: Styles.MediumTitle,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

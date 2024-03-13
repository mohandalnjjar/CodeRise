import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_with_me/core/utils/styles.dart';
import 'package:learn_with_me/core/utils/widgets/cutom_app_bar.dart';
import 'package:learn_with_me/core/utils/widgets/rating.dart';

class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomAppbar(
          title: "Book Me",
          icon: FontAwesomeIcons.x,
          onpressed: () => context.pop(),
        ),
        Expanded(
          flex: 4,
          child: AspectRatio(
            aspectRatio: 2 / 2.8,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: const NetworkImage(
                          'https://images.pexels.com/photos/4792733/pexels-photo-4792733.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'))),
            ),
          ),
        ),
        const SizedBox(
          height: 45,
        ),
        Expanded(
          flex: 6,
          child: Column(
            children: [
              Text(
                "The Jungle Book",
                style: AppStyles.styleGtSectraRegular30,
              ),
              Text(
                "this is me book",
                style: AppStyles.styleMonserateRegular18,
              ),
              SizedBox(
                height: 5,
              ),
              const Rating(),
            ],
          ),
        ),
      ],
    );
  }
}

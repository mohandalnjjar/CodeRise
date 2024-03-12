import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_with_me/core/utils/widgets/cutom_app_bar.dart';

class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppbar(
      title: "Book Me",
      icon: FontAwesomeIcons.x,
      onpressed: () => context.pop(),
    );
  }
}

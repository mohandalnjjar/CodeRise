import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learn_with_me/core/utils/widgets/cutom_app_bar.dart';

class BooksViewBody extends StatelessWidget {
  const BooksViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
      SliverToBoxAdapter(
        child: CustomAppbar(
          title: 'Bookly',
          icon: FontAwesomeIcons.magnifyingGlass,
          onpressed: () {},
        ),
      ),
    ]);
  }
}

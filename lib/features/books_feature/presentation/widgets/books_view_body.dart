import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_with_me/core/utils/widgets/custom_list_header.dart';
import 'package:learn_with_me/core/utils/widgets/cutom_app_bar.dart';
import 'package:learn_with_me/features/books_feature/presentation/widgets/best_seller_books_List_view.dart';
import 'package:learn_with_me/features/books_feature/presentation/widgets/books_home_view_header_section.dart';

class BooksViewBody extends StatelessWidget {
  const BooksViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: CustomAppbar(
            title: 'Books Store',
            icon: FontAwesomeIcons.x,
            onpressed: () {
              context.pop();
            },
          ),
        ),
        BooksHomeViewHeaderSection(),
        SliverToBoxAdapter(
          child: CustomListHeader(
            title: 'Best Seller',
            textButtonTitle: 'View All',
            onPressed: () {},
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: BooksList(),
          ),
        ),
        SliverToBoxAdapter(
          child: CustomListHeader(
            title: 'Free Books',
            textButtonTitle: 'View All',
            onPressed: () {},
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 5),
            child: BooksList(),
          ),
        ),
      ],
    );
  }
}

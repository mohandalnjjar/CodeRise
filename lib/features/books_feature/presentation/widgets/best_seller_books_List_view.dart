import 'package:flutter/material.dart';
import 'package:learn_with_me/features/books_feature/presentation/widgets/best_seller_list_view_item.dart';

class BooksList extends StatelessWidget {
  const BooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .28,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: BestSellerListViewItem(),
        ),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

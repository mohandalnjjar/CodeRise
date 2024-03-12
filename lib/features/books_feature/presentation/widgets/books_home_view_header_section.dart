import 'package:flutter/material.dart';
import 'package:learn_with_me/core/utils/styles.dart';
import 'package:learn_with_me/features/news_feature/presentation/widgets/custom_text_field.dart';

class BooksHomeViewHeaderSection extends StatelessWidget {
  const BooksHomeViewHeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcom Back,",
              style: AppStyles.styleRegular18,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "What Do You Want To",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
            ),
            Text(
              "Read To Day?!",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
            ),
            SizedBox(
              height: 20,
            ),
            CustomSearchFiled(),
          ],
        ),
      ),
    );
  }
}

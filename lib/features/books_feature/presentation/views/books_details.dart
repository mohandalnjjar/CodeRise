import 'package:flutter/material.dart';
import 'package:learn_with_me/features/books_feature/presentation/widgets/books_details_view_body.dart';

class BooksDetailsView extends StatelessWidget {
  const BooksDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: BooksDetailsViewBody(),
      ),
    );
  }
}

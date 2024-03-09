import 'package:flutter/material.dart';
import 'package:learn_with_me/features/books_feature/presentation/widgets/books_view_body.dart';

class BooksHomeView extends StatelessWidget {
  const BooksHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: BooksViewBody(),
      ),
    );
  }
}

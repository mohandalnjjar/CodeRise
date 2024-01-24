import 'package:flutter/material.dart';
import 'package:learn_with_me/features/home/presentation/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: HomeViweBody(),
    ));
  }
}

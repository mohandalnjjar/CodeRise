import 'package:flutter/material.dart';

import 'constance.dart';
import 'features/home/presentation/home_view.dart';

void main(List<String> args) {
  runApp(const LearnWihtMe());
}

class LearnWihtMe extends StatelessWidget {
  const LearnWihtMe({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeView(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kprimaryColor,
      ),
    );
  }
}

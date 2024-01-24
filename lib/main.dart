import 'package:flutter/material.dart';
import 'package:learn_with_me/core/utils/app_router.dart';

import 'constance.dart';

void main(List<String> args) {
  runApp(const LearnWihtMe());
}

class LearnWihtMe extends StatelessWidget {
  const LearnWihtMe({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kprimaryColor,
      ),
    );
  }
}

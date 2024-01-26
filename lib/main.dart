import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_with_me/core/utils/app_router.dart';
import 'package:learn_with_me/core/utils/service_locator.dart';
import 'package:learn_with_me/features/news_feature/data/models/repos/news_repo_impl.dart';
import 'package:learn_with_me/features/news_feature/presentation/manager/news_cubit/fetch_news_cubit.dart';

import 'constance.dart';

void main(List<String> args) {
  runApp(const LearnWihtMe());
}

class LearnWihtMe extends StatelessWidget {
  const LearnWihtMe({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FetchnewsCubit(
            getit.get<NewsRepoImpl>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kprimaryColor,
        ),
      ),
    );
  }
}

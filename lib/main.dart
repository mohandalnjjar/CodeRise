import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:learn_with_me/core/utils/app_router.dart';
import 'package:learn_with_me/core/utils/service_locator.dart';
import 'package:learn_with_me/features/news_feature/data/models/repository/news_repo_impl.dart';
import 'package:learn_with_me/features/news_feature/presentation/manager/news_cubit/fetch_news_cubit.dart';
import 'package:learn_with_me/features/to_do_feature/data/models/to_do_model.dart';
import 'core/utils/constance.dart';

void main(List<String> args) async {
  await Hive.initFlutter();
  Hive.registerAdapter(ToDoModelAdapter());
  await Hive.openBox(KToDoBox);

  Locator();
  runApp(
    const CodeRise(),
  );
}

class CodeRise extends StatelessWidget {
  const CodeRise({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return FetchNewsCubit(
          getit.get<NewsRepoImpl>(),
        )..fetchNewsMethod();
      },
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
        ),
      ),
    );
  }
}

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:learn_with_me/core/utils/app_router.dart';
import 'package:learn_with_me/core/utils/service_locator.dart';
import 'package:learn_with_me/features/news_feature/data/models/repository/news_repo_impl.dart';
import 'package:learn_with_me/features/news_feature/presentation/manager/news_cubit/fetch_news_cubit.dart';
import 'package:learn_with_me/features/to_do_feature/data/models/to_do_model.dart';
import 'package:learn_with_me/features/to_do_feature/presentation/manager/fetch_to_do_cubit/fetch_to_do_cubit_cubit.dart';
import 'core/utils/constance.dart';

void main(List<String> args) async {
  await Hive.initFlutter();
  Hive.registerAdapter(ToDoModelAdapter());
  await Hive.openBox<ToDoModel>(KToDoBox);

  Locator();
  runApp(
    DevicePreview(
      enabled: false,
      builder: (
        context,
      ) {
        return const CodeRise();
      },
    ),
  );
}

class CodeRise extends StatelessWidget {
  const CodeRise({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return FetchNewsCubit(
              getit.get<NewsRepoImpl>(),
            )..fetchNewsMethod();
          },
        ),
        BlocProvider(
          create: (context) => FetchToDoCubit()..FetchToDoMehod(),
        ),
      ],
      child: MaterialApp.router(
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}

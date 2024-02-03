import 'package:go_router/go_router.dart';
import 'package:learn_with_me/core/utils/constance.dart';
import 'package:learn_with_me/features/home/presentation/views/home_view.dart';
import 'package:learn_with_me/features/news_feature/data/models/news_model.dart';
import 'package:learn_with_me/features/news_feature/presentation/views/news_details_view.dart';
import 'package:learn_with_me/features/news_feature/presentation/views/search_screen.dart';
import 'package:learn_with_me/features/to_do_feature/views/to_do_view.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kMainRouter,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kDetailsRouter,
        builder: (context, state) =>
            NewsDetailsView(newsModel: state.extra as NewsModel),
      ),
      GoRoute(
        path: kSearchScreenRouter,
        builder: (context, state) => const SearchScreen(),
      ),
      GoRoute(
        path: kTODoHomeView,
        builder: (context, state) => const ToDoview(),
      )
    ],
  );
}

import 'package:go_router/go_router.dart';
import 'package:learn_with_me/constance.dart';
import 'package:learn_with_me/features/home/presentation/views/home_view.dart';
import 'package:learn_with_me/features/news_feature/presentation/views/news_details_view.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kMainRouter,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kDetailsRouter,
        builder: (context, state) => const NewsDetailsView(),
      )
    ],
  );
}

import 'package:book_station/feature/home_page/domain/entities/book_entity.dart';
import 'package:book_station/feature/search/presentation/view/search_view.dart';
import 'package:go_router/go_router.dart';
import '../../feature/home_page/presentation/views/book_details_view.dart';
import '../../feature/home_page/presentation/views/home_page_view.dart';
import '../../feature/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeScreen = '/HomeScreen';
  static const kBookDetailScreen = '/BookDetailScreen';
  static const kSearchScreen = '/SearchScreen';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeScreen,
        builder: (context, state) => const HomePageView(),
      ),
      GoRoute(
        path: kBookDetailScreen,
        builder: (context, state) => BookDetailsView(
          book: state.extra as BookEntity
        ),
      ),
      GoRoute(
        path: kSearchScreen,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}

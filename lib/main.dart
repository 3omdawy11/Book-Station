import 'package:book_station/core/utils/router.dart';
import 'package:book_station/core/utils/simple_bloc_observer.dart';
import 'package:book_station/feature/home_page/domain/entities/book_entity.dart';
import 'package:book_station/feature/home_page/domain/repo/home_repo_implementation.dart';
import 'package:book_station/feature/home_page/domain/use_cases/fetch_newest_books_use_case.dart';
import 'package:book_station/feature/home_page/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:book_station/feature/home_page/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'core/utils/functions/setup_service_locator.dart';
import 'feature/home_page/domain/use_cases/fetch_featured_books_use_case.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox<BookEntity>(kFeaturedBox);
  await Hive.openBox<BookEntity>(kNewestBox);
  setupServiceLocator();
  Bloc.observer = SimpleBlocObserver();
  runApp(const BookStation());
}

class BookStation extends StatelessWidget {
  const BookStation({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return FeaturedBooksCubit(
              FetchFeaturedBooksUseCase(
                getIt.get<HomeRepoImplementation>(),
              ),
            )..fetchFeaturedBooks();
          },
        ),
        BlocProvider(
          create: (context) {
            return NewestBooksCubit(
              FetchNewestBooksUseCase(getIt.get<HomeRepoImplementation>()),
            );
          },
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
            appBarTheme: const AppBarTheme().copyWith(
                backgroundColor: kScaffoldBackGroundColor, elevation: 0),
            scaffoldBackgroundColor: kScaffoldBackGroundColor),
      ),
    );
  }
}

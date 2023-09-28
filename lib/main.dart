import 'package:book_station/core/utils/router.dart';
import 'package:book_station/feature/home_page/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async{
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox<BookEntity>(kFeaturedBox);
  await Hive.openBox<BookEntity>(kNewestBox);
  runApp(const BookStation());
}

class BookStation extends StatelessWidget {
  const BookStation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
          appBarTheme: const AppBarTheme().copyWith(
              backgroundColor: kScaffoldBackGroundColor, elevation: 0),
          scaffoldBackgroundColor: kScaffoldBackGroundColor),
    );
  }
}

import 'package:book_station/feature/home_page/presentation/views/widgets/home_page_widgets/home_page_view_body.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomePageViewBody(),
    );
  }
}

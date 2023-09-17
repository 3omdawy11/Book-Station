import 'package:book_station/feature/search/presentation/view/widgets/search_view_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SearchViewTextField(),
      ],
    );
  }
}


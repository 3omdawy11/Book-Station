import 'package:book_station/core/utils/styles.dart';
import 'package:book_station/feature/search/presentation/view/widgets/search_view_text_field.dart';
import 'package:flutter/material.dart';

import '../../../../home_page/presentation/views/widgets/home_page_widgets/best_seller_list_item.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SearchViewTextField(),
        SizedBox(
          height: 30,
        ),
        Align(alignment: Alignment.centerLeft ,child: Text('Search Result',style: Styles.textStyle18,)),
        SizedBox(
          height: 20,
        ),
        Expanded(child: SearchResultListView()),

      ],
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (BuildContext context, int index) {
        return const BookListViewItem();
      },
    );;
  }
}

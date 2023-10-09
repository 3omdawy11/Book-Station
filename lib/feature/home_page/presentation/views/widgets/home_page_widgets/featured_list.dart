import 'package:flutter/material.dart';
import 'package:book_station/feature/home_page/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../domain/entities/book_entity.dart';
import 'featured_list_item.dart';

class FeaturedList extends StatefulWidget {
  const FeaturedList({
    super.key, required this.books,
  });

  final List<BookEntity> books;

  @override
  State<FeaturedList> createState() => _FeaturedListState();
}


class _FeaturedListState extends State<FeaturedList> {
  late final ScrollController _scrollController;
  var pageNumber = 0;
  var isLoading = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
  }
  void _scrollListener() async{
    var currentPosition = _scrollController.position.pixels;
    var maxPosition = _scrollController.position.maxScrollExtent;
    if (currentPosition >= maxPosition * 0.7 && !isLoading) {
      isLoading = true;
      // Trigger your fetchFeaturedBooks() function here
      await BlocProvider.of<FeaturedBooksCubit>(context).fetchFeaturedBooks(pageNumber: ++pageNumber);
      isLoading = false;
    }
  }

  @override
  Widget build(BuildContext context) {


    void dispose() {
      _scrollController.dispose(); // Dispose of the controller when the widget is removed
      super.dispose();
    }
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.28,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: widget.books.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (
            BuildContext context,
            int index,
            ) {
          return HomePageListBookItem(bookDetails: widget.books[index],);
        },
      ),
    );
  }

}
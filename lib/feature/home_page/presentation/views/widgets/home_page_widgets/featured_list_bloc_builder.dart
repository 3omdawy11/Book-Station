import 'package:book_station/feature/home_page/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'featured_list.dart';

class FeaturedListBlocBuilder extends StatelessWidget {
  const FeaturedListBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess){
          return FeaturedList(
            books: state.books,
          );
        }else if (state is FeaturedBooksFailure){
          print(state.errMessage);
          return Text(state.errMessage);
        }else {
          return const CircularProgressIndicator();
        }

      },
    );
  }
}

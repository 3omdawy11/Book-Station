import 'package:book_station/feature/home_page/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../domain/entities/book_entity.dart';
import 'featured_list.dart';

class FeaturedListBlocConsumer extends StatefulWidget {
  const FeaturedListBlocConsumer({
    super.key,
  });

  @override
  State<FeaturedListBlocConsumer> createState() =>
      _FeaturedListBlocConsumerState();
}

class _FeaturedListBlocConsumerState extends State<FeaturedListBlocConsumer> {
  List<BookEntity> books = [];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeaturedBooksCubit, FeaturedBooksState>(
      listener: (context, state) {
        if (state is FeaturedBooksSuccess) {
          books.addAll(state.books);
        }
        SnackBar snackBar = SnackBar(
          content: const Text('Failed to load books.'),
          action: SnackBarAction(
            label: 'Retry',
            onPressed: () {
              final featuredBooksCubit = context.read<FeaturedBooksCubit>;
              featuredBooksCubit.call().featuredBooksUseCase(); // re-check
            },
          ),
        );
        if (state is FeaturedBooksPaginationFailure) {
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        if (state is FeaturedBooksSuccess ||
            state is FeaturedBooksPaginationLoading ||
            state is FeaturedBooksPaginationFailure) {
          return FeaturedList(books: books);
        } else if (state is FeaturedBooksFailure) {
          return Text(state.errMessage);
        } else {
          return const CircularProgressIndicator();
        }
      },
    );

  }

}



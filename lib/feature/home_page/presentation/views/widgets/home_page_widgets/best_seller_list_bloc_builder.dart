import 'package:book_station/feature/home_page/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:book_station/feature/home_page/presentation/views/widgets/home_page_widgets/best_seller_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListBlocBuilder extends StatelessWidget {
  const BestSellerListBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess){
          return BestSellerList(
            books: state.books,
          );
        }else if (state is NewestBooksFailure){
          print(state.errMessage);
          return Text(state.errMessage);
        }else {
          return const CircularProgressIndicator();
        }

      },
    );
  }
}


import 'package:book_station/feature/home_page/presentation/views/widgets/book_details_page_widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../manager/featured_books_cubit/featured_books_cubit.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: context.read<FeaturedBooksCubit>(),
      child: const BookDetailsViewBody(),
    );
  }
}

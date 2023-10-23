import 'package:bloc/bloc.dart';
import 'package:book_station/feature/home_page/domain/use_cases/fetch_featured_books_use_case.dart';
import 'package:meta/meta.dart';

import '../../../domain/entities/book_entity.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.featuredBooksUseCase) : super(FeaturedBooksInitial());
  BookEntity? selectedBook;
  final FetchFeaturedBooksUseCase featuredBooksUseCase;
  Future<void> fetchFeaturedBooks({int pageNumber = 0}) async {
    if (pageNumber == 0) {
      emit(FeaturedBooksLoading());
    } else {
      emit(FeaturedBooksPaginationLoading());
    }

    var result = await featuredBooksUseCase.call(pageNumber);
    result.fold(
        (failure) => {
              (pageNumber == 0)
                  ? emit(FeaturedBooksFailure(failure.message))
                  : emit(FeaturedBooksPaginationFailure(failure.message))
            },
        (books) => {emit(FeaturedBooksSuccess(books))});
  }
  void setSelectedBook(BookEntity book){
    selectedBook = book;
  }
  BookEntity? getSelectedBook(){
    return selectedBook;
  }
}

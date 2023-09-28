import 'package:book_station/constants.dart';
import 'package:book_station/core/utils/functions/save_books.dart';
import 'package:book_station/feature/home_page/data/models/book_model/book_model.dart';
import '../../../../core/utils/api_service.dart';
import '../../domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImplementation extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImplementation(this.apiService);

  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var data = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=programming');
    List<BookEntity> books = getBooksList(data);
    saveBooksData(books,kFeaturedBox);

    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=programming&Sorting=newest');
    List<BookEntity> books = getBooksList(data);
    saveBooksData(books, kNewestBox);

    return books;
  }
}

List<BookEntity> getBooksList(Map<dynamic, String> data) {
  List<BookEntity> books = [];

  if (data.containsKey('books')) {
    final books = data['books'] as List<dynamic>;

    for (var book in books) {
      if (book is Map<String, dynamic>) {
        books.add(BookModel.fromJson(book));
      }
    }
  }
  return books;
}

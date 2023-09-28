import 'package:book_station/constants.dart';

import '../../../../core/utils/functions/get_books.dart';
import '../../domain/entities/book_entity.dart';
import 'package:hive_flutter/hive_flutter.dart';
abstract class HomeLocalDataSource {
  List<BookEntity> fetchFeaturedBooks();
  List<BookEntity> fetchNewestBooks();
}
class HomeLocalDataSourceImplementation extends HomeLocalDataSource{
  @override
  List<BookEntity> fetchFeaturedBooks() {
    Box<BookEntity> box = getBooksData(kFeaturedBox);
    return box.values.toList();
  }

  @override
  List<BookEntity> fetchNewestBooks() {
    Box<BookEntity> box = getBooksData(kNewestBox);
    return box.values.toList();
  }

}

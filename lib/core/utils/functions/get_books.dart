import 'package:hive_flutter/hive_flutter.dart';
import '../../../feature/home_page/domain/entities/book_entity.dart';

Box<BookEntity> getBooksData(String boxName) {
  var box = Hive.box<BookEntity>(boxName);
  return box;
}
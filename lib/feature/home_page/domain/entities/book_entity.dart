import 'package:hive/hive.dart';
part 'book_entity.g.dart';
@HiveType(typeId: 0)
class BookEntity {

  @HiveField(0)
  final String? title;
  @HiveField(1)
  final String? image;
  @HiveField(2)
  final String? authorName;
  @HiveField(3)
  final num? price;
  @HiveField(4)
  final String? currency;
  @HiveField(5)
  final num? averageRating;
  @HiveField(6)
  final num? numberOfRatings;

  BookEntity(
      {required this.image,
      required this.title,
      required this.authorName,
      required this.price,
      required this.currency,
      required this.averageRating,
      required this.numberOfRatings});
}

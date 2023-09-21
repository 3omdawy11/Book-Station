class BookEntity {
  final String? image;
  final String? title;
  final String? authorName;
  final num? price;
  final String? currency;
  final num? averageRating;
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

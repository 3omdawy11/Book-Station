import 'package:book_station/feature/home_page/domain/entities/book_entity.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';
abstract class HomeRepo{
  Future<List<Either<Failure,BookEntity>>> fetchFeaturedBooks();
  Future<List<Either<Failure,BookEntity>>> fetchNewestBooks();
}
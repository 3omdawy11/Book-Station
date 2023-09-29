import 'package:book_station/core/errors/failure.dart';
import 'package:book_station/feature/home_page/data/data_sources/home_remote_data_source.dart';
import 'package:book_station/feature/home_page/domain/entities/book_entity.dart';
import 'package:book_station/feature/home_page/domain/repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../data/data_sources/home_local_data_source.dart';

class HomeRepoImplementation extends HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;
  HomeRepoImplementation(
      {required this.homeRemoteDataSource, required this.homeLocalDataSource});

  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() async {
    try {
      List<BookEntity> books;
      books = homeLocalDataSource.fetchFeaturedBooks();
      if (books.isNotEmpty) {
        return right(books); // return if there is cached books
      }
      books =
          await homeRemoteDataSource.fetchFeaturedBooks(); // get remote Books
      return right(books);
    } catch (e) {
      return (e is DioError)
          ? left(ServerFailure.fromDioError(e))
          : left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() async {
    try {
      List<BookEntity> books;
      books = homeLocalDataSource.fetchNewestBooks();
      if (books.isNotEmpty) {
        return right(books); // return if there is cached books
      }
      books = await homeRemoteDataSource.fetchNewestBooks(); // get remote Books
      return right(books);
    } catch (e) {
      return (e is DioError)
          ? left(ServerFailure.fromDioError(e))
          : left(ServerFailure(e.toString()));
    }
  }
}

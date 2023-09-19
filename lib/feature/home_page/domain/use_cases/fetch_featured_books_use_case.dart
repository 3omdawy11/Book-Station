import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';
import '../entities/book_entity.dart';
import '../repo/home_repo.dart';

class FetchFeaturedBooksUseCase{
  final HomeRepo homeRepo;
  FetchFeaturedBooksUseCase(this.homeRepo);

  Future<List<Either<Failure,BookEntity>>> fetchFeaturedBooks(){
    // Write extra code like checking permissions
    return homeRepo.fetchFeaturedBooks();
  }
}
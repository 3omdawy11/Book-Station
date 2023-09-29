import 'package:book_station/core/errors/failure.dart';
import 'package:book_station/core/use_cases/use_case.dart';
import 'package:book_station/feature/home_page/domain/entities/book_entity.dart';
import 'package:book_station/feature/home_page/domain/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchNewestBooksUseCase extends UseCase<List<BookEntity>, void> {
  HomeRepo homeRepo;
  FetchNewestBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([void param]) async {
    return await homeRepo.fetchNewestBooks();
  }
}

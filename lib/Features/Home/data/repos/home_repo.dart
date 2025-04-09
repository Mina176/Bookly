import 'package:bookly/Core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import '../models/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failures, List<BookModel>>> fetchBestSellerBooks();
}

import 'package:bookly/Core/Utils/api_service.dart';
import 'package:bookly/Core/errors/failures.dart';
import 'package:bookly/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/Home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      // FIX 2: Changed query to be less restrictive
      var data = await apiService.get(
          endpoint: 'volumes?q=programming&orderBy=newest');

      List<BookModel> books = [];

      for (var book in (data['items'] ?? [])) {
        books.add(BookModel.fromJson(book));
      }

      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      // FIX 1: Removed 'filter=free-ebooks' and added 'orderBy=relevance'
      var data = await apiService.get(
          endpoint: 'volumes?q=programming&orderBy=relevance');

      List<BookModel> books = [];

      for (var book in (data['items'] ?? [])) {
        books.add(BookModel.fromJson(book));
      }

      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}

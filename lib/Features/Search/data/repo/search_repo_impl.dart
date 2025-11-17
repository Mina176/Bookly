import 'package:bookly/Core/Utils/api_service.dart';
import 'package:bookly/Core/errors/failures.dart';
import 'package:bookly/Core/models/book_model/book_model.dart';
import 'package:bookly/Features/Search/data/repo/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiService apiService;
  SearchRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchedBooks(
      {required String query}) async {
    try {
      var data = await apiService.get(
          endpoint:
              'volumes?Filtering=free-ebooks&Sorting=relevance&maxResults=40&q=$query');

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

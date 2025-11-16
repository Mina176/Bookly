import 'package:bloc/bloc.dart';
import 'package:bookly/Core/models/book_model/book_model.dart';
import 'package:bookly/Features/Home/data/repos/home_repo_impl.dart';
import 'package:equatable/equatable.dart';

part 'fetch_similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepoImpl) : super(SimilarBooksInitial());

  final HomeRepoImpl homeRepoImpl;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var result = await homeRepoImpl.fetchSimilarBooks(category: category);
    result.fold((failure) {
      emit(SimilarBooksFailure(failure.errMessage));
    }, (books) {
      emit(SimilarBooksSuccess(books));
    });
  }
}

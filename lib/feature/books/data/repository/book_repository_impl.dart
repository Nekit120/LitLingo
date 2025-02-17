import 'package:lit_lingo/core/domain/retrofit_request_handler.dart';
import 'package:lit_lingo/feature/books/data/source/books_remote_data_source.dart';
import 'package:lit_lingo/feature/books/domain/models/response_wrapper.dart';
import 'package:lit_lingo/feature/books/domain/repository/book_repository.dart';

class BookRepositoryImpl implements BookRepository {
  final BooksRemoteDataSource _booksRemoteDataSource;

  BookRepositoryImpl({required BooksRemoteDataSource booksRemoteDataSource})
      : _booksRemoteDataSource = booksRemoteDataSource;

  @override
  Future<ResponseWrapper> getRecommendedBooks() async {
    final result = await _booksRemoteDataSource.getRecommendBooks("en");
    return result;
  }

  @override
  Future<ResponseWrapper> getRomanceBooks() async {
    final result =
        await _booksRemoteDataSource.getBooksByTopic("en", "romance");
    return result;
  }
}

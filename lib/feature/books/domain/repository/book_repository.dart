import 'package:lit_lingo/feature/books/domain/models/response_wrapper.dart';

abstract class BookRepository {
  Future<ResponseWrapper> getRecommendedBooks();
  Future<ResponseWrapper> getRomanceBooks();
}

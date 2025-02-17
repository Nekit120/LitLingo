import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../domain/models/response_wrapper.dart';

part 'books_remote_data_source.g.dart';

@RestApi()
abstract class BooksRemoteDataSource {
  factory BooksRemoteDataSource(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _BooksRemoteDataSource;

  @GET('/books')
  Future<ResponseWrapper> getRecommendBooks(
    @Query('languages') String languages,
  );

  @GET('/books')
  Future<ResponseWrapper> getBooksByTopic(
    @Query('languages') String languages,
    @Query('topic') String topic,
  );
}

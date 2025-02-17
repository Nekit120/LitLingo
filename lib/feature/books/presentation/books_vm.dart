import 'package:flutter/material.dart';
import 'package:lit_lingo/feature/books/domain/models/response_wrapper.dart';
import 'package:reactive_variables/reactive_variables.dart';

import '../../../core/domain/di/di_container.dart';
import '../domain/repository/book_repository.dart';

class BooksViewModel {
  final BookRepository _bookRepository;
  BooksViewModel({required BookRepository bookRepository})
      : _bookRepository = bookRepository;

  Rv<ResponseWrapper?> recommendBooks = null.rv();
  Rv<ResponseWrapper?> romanceBooks = null.rv();

  Future<void> getRecommendBooks() async {
    recommendBooks.value = await _bookRepository.getRecommendedBooks();
  }

  Future<void> getRomanceBooks() async {
    romanceBooks.value = await _bookRepository.getRomanceBooks();
  }

  Future<void> initSteps() async {
    getRecommendBooks();
    getRomanceBooks();
  }
}

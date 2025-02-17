import 'package:flutter/cupertino.dart';
import 'package:lit_lingo/feature/books/domain/repository/book_repository.dart';
import 'package:provider/provider.dart';

import 'books_view.dart';
import 'books_vm.dart';

class BooksPage extends StatelessWidget {
  final BookRepository _bookRepository;
  const BooksPage({super.key, required BookRepository bookRepository})
      : _bookRepository = bookRepository;

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => BooksViewModel(bookRepository: _bookRepository),
      child: const BooksView(),
    );
  }
}

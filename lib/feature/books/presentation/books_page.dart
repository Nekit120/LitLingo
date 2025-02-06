import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'books_view.dart';
import 'books_vm.dart';

class BooksPage extends StatelessWidget {
  const BooksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => BooksViewModel(),
      child: const BooksView(),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'my_books_view.dart';
import 'my_books_vm.dart';

class MyBooksPage extends StatelessWidget {
  const MyBooksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => MyBooksViewModel(),
      child: const MyBooksView(),
    );
  }
}

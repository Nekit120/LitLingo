import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'read_book_view.dart';
import 'read_book_vm.dart';

class ReadBookPage extends StatelessWidget {
  const ReadBookPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => ReadBookViewModel(),
      child: const ReadBookView(),
    );
  }
}

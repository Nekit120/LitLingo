import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'search_view.dart';
import 'search_vm.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => SearchViewModel(),
      child: const SearchView(),
    );
  }
}

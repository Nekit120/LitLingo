import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lit_lingo/core/domain/router/route_names.dart';
import 'package:lit_lingo/feature/books/domain/models/book_model.dart';
import 'package:lit_lingo/feature/books/presentation/books_vm.dart';

import '../../../theme/custom_text_style.dart';

class BooksView extends StatefulWidget {
  const BooksView({super.key});

  @override
  State<BooksView> createState() => _BooksViewState();
}

class _BooksViewState extends State<BooksView> {
  late final _vm = context.read<BooksViewModel>();

  @override
  void initState() {
    super.initState();
    _vm.initSteps();
  }

  Widget bookWidget(BookModel bookModel) {
    return GestureDetector(
      child: Column(
        children: [
          Card(
            elevation: 1,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: SizedBox(
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  child: Image.network(
                    bookModel.formats.image ??
                        "https://shikimori.one/system/animes/original/56838.jpg",
                    height: 150,
                    width: 100,
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          SizedBox(
              width: 100,
              child: Text(bookModel.title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  textAlign: TextAlign.center))
        ],
      ),
      onTap: () {
        context.pushNamed(RouteNames.read);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Рекомендации:",
              style: CustomTextStyle.body22Regular.copyWith(),
            ),
          ),
          const SizedBox(height: 10),
          _vm.recommendBooks.observer(
            (context, value) {
              return value == null
                  ? const Center(child: CircularProgressIndicator())
                  : SizedBox(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        itemCount: value!.results.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(
                              left: index == 0 ? 16 : 6,
                              right: index == value.results.length - 1 ? 16 : 0,
                            ),
                            child: bookWidget(value.results[index]),
                          );
                        },
                      ),
                    );
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Романтика:",
              style: CustomTextStyle.body22Regular.copyWith(),
            ),
          ),
          _vm.romanceBooks.observer(
            (context, value) {
              return value == null
                  ? const Center(child: CircularProgressIndicator())
                  : SizedBox(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        itemCount: value!.results.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(
                              left: index == 0 ? 16 : 6,
                              right: index == value.results.length - 1 ? 16 : 0,
                            ),
                            child: bookWidget(value.results[index]),
                          );
                        },
                      ),
                    );
            },
          )
        ],
      ),
    );
  }
}

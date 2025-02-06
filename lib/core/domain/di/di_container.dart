import 'dart:developer';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:lit_lingo/feature/settings/presentation/settings_page.dart';
import 'package:reg_it_abstract/reg_it_abstract.dart';

import '../../../feature/books/presentation/books_page.dart';
import '../../../feature/my_books/presentation/my_books_page.dart';
import '../../../feature/search/presentation/search_page.dart';
import '../../../feature/settings/domain/service/app_settings_bloc.dart';
import '../../../feature/stateful_navigator/presentation/home_page.dart';
import '../key_value_storage/key_value_storage.dart';
import '../key_value_storage/storage_key/storage_key.dart';
import '../router/route_names.dart';

class DIContainer implements Registry {
  static final instance = DIContainer._();
  DIContainer._();

  GoRouter _initRouter() => GoRouter(
        initialLocation: "/${RouteNames.books}",
        routes: [
          StatefulShellRoute.indexedStack(
              builder: (context, state, navigationShell) {
                return HomePage(child: navigationShell);
              },
              branches: [
                StatefulShellBranch(routes: [
                  GoRoute(
                    name: RouteNames.books,
                    path: "/${RouteNames.books}",
                    builder: (context, state) {
                      return const BooksPage();
                    },
                  ),
                ]),
                StatefulShellBranch(routes: [
                  GoRoute(
                    name: RouteNames.myBooks,
                    path: "/${RouteNames.myBooks}",
                    builder: (context, state) {
                      return const MyBooksPage();
                    },
                  ),
                ]),
                StatefulShellBranch(routes: [
                  GoRoute(
                    name: RouteNames.search,
                    path: "/${RouteNames.search}",
                    builder: (context, state) {
                      return const SearchPage();
                    },
                  ),
                ]),
                StatefulShellBranch(routes: [
                  GoRoute(
                    name: RouteNames.settings,
                    path: "/${RouteNames.settings}",
                    builder: (context, state) {
                      return const SettingsPage();
                    },
                  ),
                ]),
              ]),
        ],
      );

  Future<void> initDependencies() async {
    put(SingletonRegistrar(_initRouter()));

    final keyValueStorage = SecureStorage();

    final appLocal = await keyValueStorage.get(StorageKey.localState);
    final settingsService = AppSettingsBloc(
        AppSettingsState(locale: appLocal ?? 0),
        secureStorage: keyValueStorage);

    put(SingletonRegistrar(settingsService));
  }

  @override
  void drop<T>() {
    final droppingInstance = GetIt.instance<Registrar<T>>();
    droppingInstance.dispose();
    GetIt.instance.unregister<Registrar<T>>();
  }

  @override
  T get<T>() {
    try {
      return GetIt.instance.get<Registrar<T>>().instance;
    } catch (e, st) {
      log(get.toString(), error: e, stackTrace: st);
      rethrow;
    }
  }

  @override
  void put<T>(Registrar<T> registrar) =>
      GetIt.instance.registerSingleton<Registrar<T>>(registrar);

  bool isExists<T>() => GetIt.instance.isRegistered<Registrar<T>>();
}

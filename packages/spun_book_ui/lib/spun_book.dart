/// Support for doing something awesome.
///
/// More dartdocs go here.
library spun_book;

import 'package:core_ui/core_ui.dart';
import 'package:spun_book/src/pages/add_debit_page.dart';
import 'package:spun_book/src/pages/spun_book_page.dart';

class SpunBookModule extends Module {
  SpunBookModule()
      : super(name: 'spun_book', routes: [
          RoutePage(
              '/spun-book',
              () => NestedNavigator(
                    navigationKey: GlobalKey<NavigatorState>(),
                    routes: {
                      '/': (pm) => SpunBookPage(pm),
                      'add-debit': (pm) => AddDebitPage(pm)
                    },
                  ))
        ], mainActionMenu: [
          ActionData('Spun Book', Icons.menu_book,
              () => AppContainer.get<PageManager>().toRoute('/spun-book'))
        ]);
}

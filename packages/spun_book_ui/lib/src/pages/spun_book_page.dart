import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

class SpunBookPage extends StatelessWidget {
  PageManager pageManager;
  SpunBookPage(this.pageManager);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: BackButtonIcon(),
          onPressed: back,
        ),
        title: Text('Spun book'.trs),
      ),
      body: ListView(
        padding: EdgeInsets.all(kPadding),
        children: [
          Wrap(children: [
            createCardInfo('R\$1.234,56', 'Á receber'),
            createCardInfo('987', 'Devedores'),
            createCardInfo('56', 'Cobrados no mês'),
          ])
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: addDebt, label: Text('Tossing debt')),
    );
  }

  Widget createCardInfo(String value, String info) {
    return Card(
        child: Padding(
            padding: EdgeInsets.all(kPadding),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(value, style: AppContainer.get<TextTheme>().titleMedium),
                Text(info)
              ],
            )));
  }

  void addDebt() {
    pageManager.toRoute('add-debit');
  }

  void back() {
    AppContainer.get<PageManager>().back();
  }
}

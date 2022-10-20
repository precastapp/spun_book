import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

class AddDebitPage extends StatelessWidget {
  PageManager pageManager;
  var formKey = GlobalKey<FormState>();
  AddDebitPage(this.pageManager);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add debit'.trs)),
      body: Form(
          key: formKey,
          child: ListView(
            padding: EdgeInsets.all(kPadding),
            children: [
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Debtor'.trs,
                    hintText: 'name, phone, e-email, code...'.trs),
                keyboardType: TextInputType.name,
                onEditingComplete: () => Focus.of(context).nextFocus(),
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Value'.trs, hintText: '\$0,00'.trs),
                keyboardType: TextInputType.number,
                onEditingComplete: () => Focus.of(context).nextFocus(),
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Observation'.trs,
                    hintText: 'optional text'.trs),
                keyboardType: TextInputType.text,
              ),
            ],
          )),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: register, label: Text('Register')),
    );
  }

  void register() {}
}

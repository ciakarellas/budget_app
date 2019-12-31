import 'package:budget_app/database/data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../functions/sumOfBills.dart';

class SumOfCategory extends StatelessWidget {
  final String category;
  const SumOfCategory(this.category);

  @override
  Widget build(BuildContext context) {
    final database = Provider.of<AppDatabase>(context);

    return StreamBuilder<Object>(
      stream: database.watchAllBills(),
      builder: (context, snapshot) {
        final bills = snapshot.data ?? List();
        return Container(
          padding: EdgeInsets.all(8.0),
          margin: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Text('Jedzenie'),
              Text(sumOfCategoryBills(bills, 'Jedzenie')),
            ],
          ),
          );
      }
    );
  }

}
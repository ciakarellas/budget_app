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

    return StreamBuilder(
      stream: database.watchAllBills(),
      builder: (context, snapshot) {
        final bills = snapshot.data ?? List<Bill>();
        return Expanded(
          child: Container(
            padding: EdgeInsets.all(1.5),
            margin: EdgeInsets.all(1.5),
            child: Column(
              children: <Widget>[
                Text(category),
                Text(sumOfCategoryBills(bills, category)),
              ],
            ),
            ),
        );
      }
    );
  }

}
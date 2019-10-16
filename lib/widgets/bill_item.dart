import 'package:flutter/material.dart';

import '../database/data.dart';

class BillList extends StatelessWidget {
  final List<Bill> bills;
  final AppDatabase database;
  BillList(this.bills, this.database);

  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: bills.length,
      itemBuilder: (_, item){
        final bill = bills[item];
        return Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(4),
            child: Text(bill.comment),
          ),
          Padding(
            padding: EdgeInsets.all(4),
            child: FlatButton(
              onPressed: (){
                database.deleteBill(bill);
              },
              child: Icon(Icons.delete),
            ),
          )
        ],
      );
      }
    );
  }
}
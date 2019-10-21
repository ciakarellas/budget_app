
import 'package:provider/provider.dart';
import 'package:budget_app/DataBase/data.dart';
import 'package:flutter/material.dart';

class ItemBill extends StatelessWidget {
  final bill;
  final database;
  ItemBill(this.bill, this.database);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
}
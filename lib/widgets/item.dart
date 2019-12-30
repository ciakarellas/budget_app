import 'package:flutter/material.dart';

class ItemBill extends StatelessWidget {
  final bill;
  final database;
  ItemBill(this.bill, this.database);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(4),
              child: Text(bill.newprice.toString()),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 4, 0, 4),
                child: Text(bill.category),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(4),
              child: FlatButton(
                onPressed: (){
                  database.deleteBill(bill);
                },
                child: Icon(Icons.delete),
              ),
            ),
          ],
        ),
    );
  }
}
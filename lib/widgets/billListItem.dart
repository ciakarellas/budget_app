import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/bill.dart';
import '../StateProvider/sumProvider.dart';

class BillListItem extends StatelessWidget {
  final Bill bill;

  BillListItem(this.bill);

  @override
  Widget build(context){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
              child: Text(bill.category),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
              child: Text(bill.price.toString()),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
              child: FlatButton(
                child:Icon(Icons.edit),
                onPressed: (){
                  Provider.of<SumState>(context, listen: false).deleteBill(bill);
                }
              ),
            ),
          ],
        )
      );
  }
}
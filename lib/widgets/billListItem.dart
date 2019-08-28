import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';

import '../models/bill.dart';
//import '../StateProvider/sumProvider.dart';

class BillListItem extends StatelessWidget {
  final Bill bill;

  BillListItem(this.bill);

  @override
  Widget build(context){
    return new Card(
      child: Text(bill.category),
    );
  }
}
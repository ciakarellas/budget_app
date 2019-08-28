import 'package:flutter/material.dart';

import './billListItem.dart';
import '../models/bill.dart';

class BillList extends StatelessWidget{
  final List<Bill> bills;

  BillList(this.bills);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: getBill(),
      );
    }
    List<Widget> getBill(){
      return bills.map((bill) => BillListItem(bill)).toList();
    }
}
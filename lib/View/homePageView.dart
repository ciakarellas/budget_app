import 'package:budget_app/widgets/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../database/data.dart';

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 TextEditingController _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: _buildBillList(context)
    );
  }

  StreamBuilder<List<Bill>> _buildBillList(BuildContext context){
    final database = Provider.of<AppDatabase>(context);
    return StreamBuilder(
      stream: database.watchAllBills(),
      builder: (context, snapshot) {
        final bills = snapshot.data ?? List();
        return CustomScrollView(
            slivers:<Widget>[
              SliverPadding(
                padding: EdgeInsets.all(8.0),
                sliver: SliverList( 
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, index){
                      return ItemBill(bills[index], database);
                    },
                    childCount: bills.length
                  ),
                ),
              ),
            ]
        );
      }
    );
  }
}

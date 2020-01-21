import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../database/data.dart';
import 'package:budget_app/widgets/dashboard_sliver.dart';
import 'package:budget_app/widgets/item.dart';
import 'package:budget_app/widgets/dashboard.dart';

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
        final bills = snapshot.data ?? List<Bill>();
        return CustomScrollView(
            slivers:<Widget>[
              DashboardSliver(
                child: Dashboard()
              ),
              SliverPadding(
                padding: EdgeInsets.all(8.0),
                sliver: SliverList( 
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, index,){
                      return ItemBill(bills[(bills.length-1)-index], database);
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

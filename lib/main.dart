import 'package:budget_app/database/data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import './View/homePageView.dart';
import './database/data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  Provider(
          builder: (_) => AppDatabase(),
          child: MaterialApp(
          theme: ThemeData(fontFamily: 'Aleo Light'),
          title: 'Budget App',
          home: MyHomePage(),
        ),
    );
  }
}

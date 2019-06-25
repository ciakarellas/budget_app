import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './StateProvider/sumProvider.dart';
import './View/homePageView.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => SumState(),
      child: MaterialApp(
        theme: ThemeData(fontFamily: 'Aleo Light'),
        title: 'Budget App',
        home: MyHomePage(),
      ),
    );
  }
}

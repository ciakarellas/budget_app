import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import './View/homePageView.dart';
import './database/data.dart';
import './Provider/categoryProvider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
          providers: [
            Provider<AppDatabase>(builder: (_) => AppDatabase(),),
            ChangeNotifierProvider<CategoryProvider>(builder: (_) => CategoryProvider(),)
          ],
          child: MaterialApp(
          theme: ThemeData(fontFamily: 'Aleo Light'),
          title: 'Budget App',
          home: MyHomePage(),
        ),
    );
  }
}

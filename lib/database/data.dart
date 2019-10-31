import 'dart:async';

import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'data.g.dart';

class Bills extends Table {
  //last bracket it is a shortcut for function .call()
  IntColumn get id => integer().autoIncrement()();
  TextColumn get comment => text().withLength(min: 1, max: 256)();
  RealColumn get newprice => real().nullable()();
}

@DataClassName("Category")
class Categories extends Table {
  
  IntColumn get id => integer().autoIncrement()();
  TextColumn get categories => text()();
}



@UseMoor(tables: [Bills, Categories])
class AppDatabase extends _$AppDatabase {
   //we need to use super constructor
   AppDatabase() : super(FlutterQueryExecutor.inDatabaseFolder(
     path: "app_db.sqllite",
     logStatements: true,
     
     ),);
     @override
     int get schemaVersion => 2;
    // tutaj bills jest akceptowane i nie jest randomową nazwą, gdyż to jest alias to table name który jest generowany automatycznie w data.g.dart
     Stream<List<Bill>> watchAllBills() => select(bills).watch();
     Future insertNewBill(Bill bill) => into(bills).insert(bill);
     Future deleteBill(Bill bill) => delete(bills).delete(bill);

     Stream<List<Category>> getCategory() => select(categories).watch();
}
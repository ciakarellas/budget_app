import 'dart:async';

import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'data.g.dart';

class Bills extends Table {
  //last bracket it is a shortcut for function .call()
  IntColumn get id => integer().autoIncrement()();
  RealColumn get newprice => real().nullable()();
  TextColumn get category => text().withLength(min: 1, max: 256)();
}


@UseMoor(tables: [Bills])
class AppDatabase extends _$AppDatabase {
   //we need to use super constructor
   AppDatabase() : super(FlutterQueryExecutor.inDatabaseFolder(
     path: "app_db.sqllite",
     logStatements: true,
     
     ),);
     @override
     int get schemaVersion => 4;
    // tutaj bills jest akceptowane i nie jest randomową nazwą, gdyż to jest alias to table name który jest generowany automatycznie w data.g.dart
     Stream<List<Bill>> watchAllBills() => select(bills).watch();
     Future insertNewBill(Bill bill) => into(bills).insert(bill);
     Future deleteBill(Bill bill) => delete(bills).delete(bill);
     Future deleteAllBill(Bill bill) => delete(bills).go();
}
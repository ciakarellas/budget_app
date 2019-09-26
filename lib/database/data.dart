import 'package:moor_flutter/moor_flutter.dart';

part 'data.g.dart';

class BillTabel extends Table {
  //last bracket it is a shortcut for function .call()
  IntColumn get id => integer().autoIncrement()();
  TextColumn get category => text().withLength(min: 1, max: 20)();
  TextColumn get comment => text().withLength(min: 1, max: 256)();
  DateTimeColumn get datatime => dateTime().nullable()();
}


@UseMoor(tables: [BillTabel])
class AppDatabase extends _$AppDatabase {
   //we need to use super constructor
   AppDatabase() : super(FlutterQueryExecutor.inDatabaseFolder(
     path: "db.sqllite",
     logStatements: true
     ));
     @override
     int get schemaVersion => 1;
}
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps
class Bill extends DataClass implements Insertable<Bill> {
  final int id;
  final String category;
  final String comment;
  final DateTime datatime;
  Bill(
      {@required this.id,
      this.category,
      @required this.comment,
      this.datatime});
  factory Bill.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Bill(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      category: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}category']),
      comment:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}comment']),
      datatime: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}datatime']),
    );
  }
  factory Bill.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Bill(
      id: serializer.fromJson<int>(json['id']),
      category: serializer.fromJson<String>(json['category']),
      comment: serializer.fromJson<String>(json['comment']),
      datatime: serializer.fromJson<DateTime>(json['datatime']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'id': serializer.toJson<int>(id),
      'category': serializer.toJson<String>(category),
      'comment': serializer.toJson<String>(comment),
      'datatime': serializer.toJson<DateTime>(datatime),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<Bill>>(bool nullToAbsent) {
    return BillsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      category: category == null && nullToAbsent
          ? const Value.absent()
          : Value(category),
      comment: comment == null && nullToAbsent
          ? const Value.absent()
          : Value(comment),
      datatime: datatime == null && nullToAbsent
          ? const Value.absent()
          : Value(datatime),
    ) as T;
  }

  Bill copyWith({int id, String category, String comment, DateTime datatime}) =>
      Bill(
        id: id ?? this.id,
        category: category ?? this.category,
        comment: comment ?? this.comment,
        datatime: datatime ?? this.datatime,
      );
  @override
  String toString() {
    return (StringBuffer('Bill(')
          ..write('id: $id, ')
          ..write('category: $category, ')
          ..write('comment: $comment, ')
          ..write('datatime: $datatime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode,
      $mrjc(category.hashCode, $mrjc(comment.hashCode, datatime.hashCode))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Bill &&
          other.id == id &&
          other.category == category &&
          other.comment == comment &&
          other.datatime == datatime);
}

class BillsCompanion extends UpdateCompanion<Bill> {
  final Value<int> id;
  final Value<String> category;
  final Value<String> comment;
  final Value<DateTime> datatime;
  const BillsCompanion({
    this.id = const Value.absent(),
    this.category = const Value.absent(),
    this.comment = const Value.absent(),
    this.datatime = const Value.absent(),
  });
  BillsCompanion copyWith(
      {Value<int> id,
      Value<String> category,
      Value<String> comment,
      Value<DateTime> datatime}) {
    return BillsCompanion(
      id: id ?? this.id,
      category: category ?? this.category,
      comment: comment ?? this.comment,
      datatime: datatime ?? this.datatime,
    );
  }
}

class $BillsTable extends Bills with TableInfo<$BillsTable, Bill> {
  final GeneratedDatabase _db;
  final String _alias;
  $BillsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _categoryMeta = const VerificationMeta('category');
  GeneratedTextColumn _category;
  @override
  GeneratedTextColumn get category => _category ??= _constructCategory();
  GeneratedTextColumn _constructCategory() {
    return GeneratedTextColumn('category', $tableName, true,
        minTextLength: 1, maxTextLength: 20);
  }

  final VerificationMeta _commentMeta = const VerificationMeta('comment');
  GeneratedTextColumn _comment;
  @override
  GeneratedTextColumn get comment => _comment ??= _constructComment();
  GeneratedTextColumn _constructComment() {
    return GeneratedTextColumn('comment', $tableName, false,
        minTextLength: 1, maxTextLength: 256);
  }

  final VerificationMeta _datatimeMeta = const VerificationMeta('datatime');
  GeneratedDateTimeColumn _datatime;
  @override
  GeneratedDateTimeColumn get datatime => _datatime ??= _constructDatatime();
  GeneratedDateTimeColumn _constructDatatime() {
    return GeneratedDateTimeColumn(
      'datatime',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, category, comment, datatime];
  @override
  $BillsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'bills';
  @override
  final String actualTableName = 'bills';
  @override
  VerificationContext validateIntegrity(BillsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    } else if (id.isRequired && isInserting) {
      context.missing(_idMeta);
    }
    if (d.category.present) {
      context.handle(_categoryMeta,
          category.isAcceptableValue(d.category.value, _categoryMeta));
    } else if (category.isRequired && isInserting) {
      context.missing(_categoryMeta);
    }
    if (d.comment.present) {
      context.handle(_commentMeta,
          comment.isAcceptableValue(d.comment.value, _commentMeta));
    } else if (comment.isRequired && isInserting) {
      context.missing(_commentMeta);
    }
    if (d.datatime.present) {
      context.handle(_datatimeMeta,
          datatime.isAcceptableValue(d.datatime.value, _datatimeMeta));
    } else if (datatime.isRequired && isInserting) {
      context.missing(_datatimeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Bill map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Bill.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(BillsCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.category.present) {
      map['category'] = Variable<String, StringType>(d.category.value);
    }
    if (d.comment.present) {
      map['comment'] = Variable<String, StringType>(d.comment.value);
    }
    if (d.datatime.present) {
      map['datatime'] = Variable<DateTime, DateTimeType>(d.datatime.value);
    }
    return map;
  }

  @override
  $BillsTable createAlias(String alias) {
    return $BillsTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(const SqlTypeSystem.withDefaults(), e);
  $BillsTable _bills;
  $BillsTable get bills => _bills ??= $BillsTable(this);
  @override
  List<TableInfo> get allTables => [bills];
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps
class BillTabelData extends DataClass implements Insertable<BillTabelData> {
  final int id;
  final String category;
  final String comment;
  final DateTime datatime;
  BillTabelData(
      {@required this.id,
      @required this.category,
      @required this.comment,
      this.datatime});
  factory BillTabelData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return BillTabelData(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      category: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}category']),
      comment:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}comment']),
      datatime: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}datatime']),
    );
  }
  factory BillTabelData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return BillTabelData(
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
  T createCompanion<T extends UpdateCompanion<BillTabelData>>(
      bool nullToAbsent) {
    return BillTabelCompanion(
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

  BillTabelData copyWith(
          {int id, String category, String comment, DateTime datatime}) =>
      BillTabelData(
        id: id ?? this.id,
        category: category ?? this.category,
        comment: comment ?? this.comment,
        datatime: datatime ?? this.datatime,
      );
  @override
  String toString() {
    return (StringBuffer('BillTabelData(')
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
      (other is BillTabelData &&
          other.id == id &&
          other.category == category &&
          other.comment == comment &&
          other.datatime == datatime);
}

class BillTabelCompanion extends UpdateCompanion<BillTabelData> {
  final Value<int> id;
  final Value<String> category;
  final Value<String> comment;
  final Value<DateTime> datatime;
  const BillTabelCompanion({
    this.id = const Value.absent(),
    this.category = const Value.absent(),
    this.comment = const Value.absent(),
    this.datatime = const Value.absent(),
  });
  BillTabelCompanion copyWith(
      {Value<int> id,
      Value<String> category,
      Value<String> comment,
      Value<DateTime> datatime}) {
    return BillTabelCompanion(
      id: id ?? this.id,
      category: category ?? this.category,
      comment: comment ?? this.comment,
      datatime: datatime ?? this.datatime,
    );
  }
}

class $BillTabelTable extends BillTabel
    with TableInfo<$BillTabelTable, BillTabelData> {
  final GeneratedDatabase _db;
  final String _alias;
  $BillTabelTable(this._db, [this._alias]);
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
    return GeneratedTextColumn('category', $tableName, false,
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
  $BillTabelTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'bill_tabel';
  @override
  final String actualTableName = 'bill_tabel';
  @override
  VerificationContext validateIntegrity(BillTabelCompanion d,
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
  BillTabelData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return BillTabelData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(BillTabelCompanion d) {
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
  $BillTabelTable createAlias(String alias) {
    return $BillTabelTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(const SqlTypeSystem.withDefaults(), e);
  $BillTabelTable _billTabel;
  $BillTabelTable get billTabel => _billTabel ??= $BillTabelTable(this);
  @override
  List<TableInfo> get allTables => [billTabel];
}

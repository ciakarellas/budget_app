// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Bill extends DataClass implements Insertable<Bill> {
  final int id;
  final double newprice;
  final String category;
  Bill({@required this.id, this.newprice, @required this.category});
  factory Bill.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final doubleType = db.typeSystem.forDartType<double>();
    final stringType = db.typeSystem.forDartType<String>();
    return Bill(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      newprice: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}newprice']),
      category: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}category']),
    );
  }
  factory Bill.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Bill(
      id: serializer.fromJson<int>(json['id']),
      newprice: serializer.fromJson<double>(json['newprice']),
      category: serializer.fromJson<String>(json['category']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'id': serializer.toJson<int>(id),
      'newprice': serializer.toJson<double>(newprice),
      'category': serializer.toJson<String>(category),
    };
  }

  @override
  BillsCompanion createCompanion(bool nullToAbsent) {
    return BillsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      newprice: newprice == null && nullToAbsent
          ? const Value.absent()
          : Value(newprice),
      category: category == null && nullToAbsent
          ? const Value.absent()
          : Value(category),
    );
  }

  Bill copyWith({int id, double newprice, String category}) => Bill(
        id: id ?? this.id,
        newprice: newprice ?? this.newprice,
        category: category ?? this.category,
      );
  @override
  String toString() {
    return (StringBuffer('Bill(')
          ..write('id: $id, ')
          ..write('newprice: $newprice, ')
          ..write('category: $category')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(id.hashCode, $mrjc(newprice.hashCode, category.hashCode)));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Bill &&
          other.id == this.id &&
          other.newprice == this.newprice &&
          other.category == this.category);
}

class BillsCompanion extends UpdateCompanion<Bill> {
  final Value<int> id;
  final Value<double> newprice;
  final Value<String> category;
  const BillsCompanion({
    this.id = const Value.absent(),
    this.newprice = const Value.absent(),
    this.category = const Value.absent(),
  });
  BillsCompanion.insert({
    this.id = const Value.absent(),
    this.newprice = const Value.absent(),
    @required String category,
  }) : category = Value(category);
  BillsCompanion copyWith(
      {Value<int> id, Value<double> newprice, Value<String> category}) {
    return BillsCompanion(
      id: id ?? this.id,
      newprice: newprice ?? this.newprice,
      category: category ?? this.category,
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

  final VerificationMeta _newpriceMeta = const VerificationMeta('newprice');
  GeneratedRealColumn _newprice;
  @override
  GeneratedRealColumn get newprice => _newprice ??= _constructNewprice();
  GeneratedRealColumn _constructNewprice() {
    return GeneratedRealColumn(
      'newprice',
      $tableName,
      true,
    );
  }

  final VerificationMeta _categoryMeta = const VerificationMeta('category');
  GeneratedTextColumn _category;
  @override
  GeneratedTextColumn get category => _category ??= _constructCategory();
  GeneratedTextColumn _constructCategory() {
    return GeneratedTextColumn('category', $tableName, false,
        minTextLength: 1, maxTextLength: 256);
  }

  @override
  List<GeneratedColumn> get $columns => [id, newprice, category];
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
    if (d.newprice.present) {
      context.handle(_newpriceMeta,
          newprice.isAcceptableValue(d.newprice.value, _newpriceMeta));
    } else if (newprice.isRequired && isInserting) {
      context.missing(_newpriceMeta);
    }
    if (d.category.present) {
      context.handle(_categoryMeta,
          category.isAcceptableValue(d.category.value, _categoryMeta));
    } else if (category.isRequired && isInserting) {
      context.missing(_categoryMeta);
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
    if (d.newprice.present) {
      map['newprice'] = Variable<double, RealType>(d.newprice.value);
    }
    if (d.category.present) {
      map['category'] = Variable<String, StringType>(d.category.value);
    }
    return map;
  }

  @override
  $BillsTable createAlias(String alias) {
    return $BillsTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $BillsTable _bills;
  $BillsTable get bills => _bills ??= $BillsTable(this);
  @override
  List<TableInfo> get allTables => [bills];
}

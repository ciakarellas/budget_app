// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Bill extends DataClass implements Insertable<Bill> {
  final int id;
  final String comment;
  final double newprice;
  Bill({@required this.id, @required this.comment, this.newprice});
  factory Bill.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final doubleType = db.typeSystem.forDartType<double>();
    return Bill(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      comment:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}comment']),
      newprice: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}newprice']),
    );
  }
  factory Bill.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Bill(
      id: serializer.fromJson<int>(json['id']),
      comment: serializer.fromJson<String>(json['comment']),
      newprice: serializer.fromJson<double>(json['newprice']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'id': serializer.toJson<int>(id),
      'comment': serializer.toJson<String>(comment),
      'newprice': serializer.toJson<double>(newprice),
    };
  }

  @override
  BillsCompanion createCompanion(bool nullToAbsent) {
    return BillsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      comment: comment == null && nullToAbsent
          ? const Value.absent()
          : Value(comment),
      newprice: newprice == null && nullToAbsent
          ? const Value.absent()
          : Value(newprice),
    );
  }

  Bill copyWith({int id, String comment, double newprice}) => Bill(
        id: id ?? this.id,
        comment: comment ?? this.comment,
        newprice: newprice ?? this.newprice,
      );
  @override
  String toString() {
    return (StringBuffer('Bill(')
          ..write('id: $id, ')
          ..write('comment: $comment, ')
          ..write('newprice: $newprice')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(id.hashCode, $mrjc(comment.hashCode, newprice.hashCode)));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Bill &&
          other.id == this.id &&
          other.comment == this.comment &&
          other.newprice == this.newprice);
}

class BillsCompanion extends UpdateCompanion<Bill> {
  final Value<int> id;
  final Value<String> comment;
  final Value<double> newprice;
  const BillsCompanion({
    this.id = const Value.absent(),
    this.comment = const Value.absent(),
    this.newprice = const Value.absent(),
  });
  BillsCompanion.insert({
    this.id = const Value.absent(),
    @required String comment,
    this.newprice = const Value.absent(),
  }) : comment = Value(comment);
  BillsCompanion copyWith(
      {Value<int> id, Value<String> comment, Value<double> newprice}) {
    return BillsCompanion(
      id: id ?? this.id,
      comment: comment ?? this.comment,
      newprice: newprice ?? this.newprice,
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

  final VerificationMeta _commentMeta = const VerificationMeta('comment');
  GeneratedTextColumn _comment;
  @override
  GeneratedTextColumn get comment => _comment ??= _constructComment();
  GeneratedTextColumn _constructComment() {
    return GeneratedTextColumn('comment', $tableName, false,
        minTextLength: 1, maxTextLength: 256);
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

  @override
  List<GeneratedColumn> get $columns => [id, comment, newprice];
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
    if (d.comment.present) {
      context.handle(_commentMeta,
          comment.isAcceptableValue(d.comment.value, _commentMeta));
    } else if (comment.isRequired && isInserting) {
      context.missing(_commentMeta);
    }
    if (d.newprice.present) {
      context.handle(_newpriceMeta,
          newprice.isAcceptableValue(d.newprice.value, _newpriceMeta));
    } else if (newprice.isRequired && isInserting) {
      context.missing(_newpriceMeta);
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
    if (d.comment.present) {
      map['comment'] = Variable<String, StringType>(d.comment.value);
    }
    if (d.newprice.present) {
      map['newprice'] = Variable<double, RealType>(d.newprice.value);
    }
    return map;
  }

  @override
  $BillsTable createAlias(String alias) {
    return $BillsTable(_db, alias);
  }
}

class Category extends DataClass implements Insertable<Category> {
  final int id;
  final String categories;
  Category({@required this.id, @required this.categories});
  factory Category.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Category(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      categories: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}categories']),
    );
  }
  factory Category.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Category(
      id: serializer.fromJson<int>(json['id']),
      categories: serializer.fromJson<String>(json['categories']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'id': serializer.toJson<int>(id),
      'categories': serializer.toJson<String>(categories),
    };
  }

  @override
  CategoriesCompanion createCompanion(bool nullToAbsent) {
    return CategoriesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      categories: categories == null && nullToAbsent
          ? const Value.absent()
          : Value(categories),
    );
  }

  Category copyWith({int id, String categories}) => Category(
        id: id ?? this.id,
        categories: categories ?? this.categories,
      );
  @override
  String toString() {
    return (StringBuffer('Category(')
          ..write('id: $id, ')
          ..write('categories: $categories')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode, categories.hashCode));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Category &&
          other.id == this.id &&
          other.categories == this.categories);
}

class CategoriesCompanion extends UpdateCompanion<Category> {
  final Value<int> id;
  final Value<String> categories;
  const CategoriesCompanion({
    this.id = const Value.absent(),
    this.categories = const Value.absent(),
  });
  CategoriesCompanion.insert({
    this.id = const Value.absent(),
    this.categories = const Value.absent(),
  });
  CategoriesCompanion copyWith({Value<int> id, Value<String> categories}) {
    return CategoriesCompanion(
      id: id ?? this.id,
      categories: categories ?? this.categories,
    );
  }
}

class $CategoriesTable extends Categories
    with TableInfo<$CategoriesTable, Category> {
  final GeneratedDatabase _db;
  final String _alias;
  $CategoriesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _categoriesMeta = const VerificationMeta('categories');
  GeneratedTextColumn _categories;
  @override
  GeneratedTextColumn get categories => _categories ??= _constructCategories();
  GeneratedTextColumn _constructCategories() {
    return GeneratedTextColumn('categories', $tableName, false,
        defaultValue: Constant('Jedzenie'));
  }

  @override
  List<GeneratedColumn> get $columns => [id, categories];
  @override
  $CategoriesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'categories';
  @override
  final String actualTableName = 'categories';
  @override
  VerificationContext validateIntegrity(CategoriesCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    } else if (id.isRequired && isInserting) {
      context.missing(_idMeta);
    }
    if (d.categories.present) {
      context.handle(_categoriesMeta,
          categories.isAcceptableValue(d.categories.value, _categoriesMeta));
    } else if (categories.isRequired && isInserting) {
      context.missing(_categoriesMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Category map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Category.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(CategoriesCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.categories.present) {
      map['categories'] = Variable<String, StringType>(d.categories.value);
    }
    return map;
  }

  @override
  $CategoriesTable createAlias(String alias) {
    return $CategoriesTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $BillsTable _bills;
  $BillsTable get bills => _bills ??= $BillsTable(this);
  $CategoriesTable _categories;
  $CategoriesTable get categories => _categories ??= $CategoriesTable(this);
  @override
  List<TableInfo> get allTables => [bills, categories];
}

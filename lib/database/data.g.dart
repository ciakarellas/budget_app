// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Bill extends DataClass implements Insertable<Bill> {
  final int id;
  final String comment;
  final double price;
  Bill({@required this.id, @required this.comment, this.price});
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
      price:
          doubleType.mapFromDatabaseResponse(data['${effectivePrefix}price']),
    );
  }
  factory Bill.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Bill(
      id: serializer.fromJson<int>(json['id']),
      comment: serializer.fromJson<String>(json['comment']),
      price: serializer.fromJson<double>(json['price']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'id': serializer.toJson<int>(id),
      'comment': serializer.toJson<String>(comment),
      'price': serializer.toJson<double>(price),
    };
  }

  @override
  BillsCompanion createCompanion(bool nullToAbsent) {
    return BillsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      comment: comment == null && nullToAbsent
          ? const Value.absent()
          : Value(comment),
      price:
          price == null && nullToAbsent ? const Value.absent() : Value(price),
    );
  }

  Bill copyWith({int id, String comment, double price}) => Bill(
        id: id ?? this.id,
        comment: comment ?? this.comment,
        price: price ?? this.price,
      );
  @override
  String toString() {
    return (StringBuffer('Bill(')
          ..write('id: $id, ')
          ..write('comment: $comment, ')
          ..write('price: $price')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(id.hashCode, $mrjc(comment.hashCode, price.hashCode)));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Bill &&
          other.id == this.id &&
          other.comment == this.comment &&
          other.price == this.price);
}

class BillsCompanion extends UpdateCompanion<Bill> {
  final Value<int> id;
  final Value<String> comment;
  final Value<double> price;
  const BillsCompanion({
    this.id = const Value.absent(),
    this.comment = const Value.absent(),
    this.price = const Value.absent(),
  });
  BillsCompanion.insert({
    this.id = const Value.absent(),
    @required String comment,
    this.price = const Value.absent(),
  }) : comment = Value(comment);
  BillsCompanion copyWith(
      {Value<int> id, Value<String> comment, Value<double> price}) {
    return BillsCompanion(
      id: id ?? this.id,
      comment: comment ?? this.comment,
      price: price ?? this.price,
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

  final VerificationMeta _priceMeta = const VerificationMeta('price');
  GeneratedRealColumn _price;
  @override
  GeneratedRealColumn get price => _price ??= _constructPrice();
  GeneratedRealColumn _constructPrice() {
    return GeneratedRealColumn(
      'price',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, comment, price];
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
    if (d.price.present) {
      context.handle(
          _priceMeta, price.isAcceptableValue(d.price.value, _priceMeta));
    } else if (price.isRequired && isInserting) {
      context.missing(_priceMeta);
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
    if (d.price.present) {
      map['price'] = Variable<double, RealType>(d.price.value);
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

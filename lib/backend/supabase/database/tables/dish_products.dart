import '../database.dart';

class DishProductsTable extends SupabaseTable<DishProductsRow> {
  @override
  String get tableName => 'dish_products';

  @override
  DishProductsRow createRow(Map<String, dynamic> data) => DishProductsRow(data);
}

class DishProductsRow extends SupabaseDataRow {
  DishProductsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DishProductsTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int get dishId => getField<int>('dish_id')!;
  set dishId(int value) => setField<int>('dish_id', value);

  int get productId => getField<int>('product_id')!;
  set productId(int value) => setField<int>('product_id', value);

  bool? get isUserAdded => getField<bool>('is_user_added');
  set isUserAdded(bool? value) => setField<bool>('is_user_added', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}

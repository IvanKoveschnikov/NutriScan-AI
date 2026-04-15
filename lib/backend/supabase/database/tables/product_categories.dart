import '../database.dart';

class ProductCategoriesTable extends SupabaseTable<ProductCategoriesRow> {
  @override
  String get tableName => 'product_categories';

  @override
  ProductCategoriesRow createRow(Map<String, dynamic> data) =>
      ProductCategoriesRow(data);
}

class ProductCategoriesRow extends SupabaseDataRow {
  ProductCategoriesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductCategoriesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get icon => getField<String>('icon');
  set icon(String? value) => setField<String>('icon', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}

import '../database.dart';

class ProductsTable extends SupabaseTable<ProductsRow> {
  @override
  String get tableName => 'products';

  @override
  ProductsRow createRow(Map<String, dynamic> data) => ProductsRow(data);
}

class ProductsRow extends SupabaseDataRow {
  ProductsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  double? get calories => getField<double>('calories');
  set calories(double? value) => setField<double>('calories', value);

  double? get protein => getField<double>('protein');
  set protein(double? value) => setField<double>('protein', value);

  double? get fats => getField<double>('fats');
  set fats(double? value) => setField<double>('fats', value);

  double? get carbs => getField<double>('carbs');
  set carbs(double? value) => setField<double>('carbs', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get createdBy => getField<String>('created_by');
  set createdBy(String? value) => setField<String>('created_by', value);

  String? get scope => getField<String>('scope');
  set scope(String? value) => setField<String>('scope', value);

  String? get category => getField<String>('category');
  set category(String? value) => setField<String>('category', value);

  List<String> get allergens => getListField<String>('allergens');
  set allergens(List<String>? value) =>
      setListField<String>('allergens', value);
}

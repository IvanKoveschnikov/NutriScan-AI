import '../database.dart';

class UserProductsTable extends SupabaseTable<UserProductsRow> {
  @override
  String get tableName => 'user_products';

  @override
  UserProductsRow createRow(Map<String, dynamic> data) => UserProductsRow(data);
}

class UserProductsRow extends SupabaseDataRow {
  UserProductsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserProductsTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

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

  String? get categoryIcon => getField<String>('category_icon');
  set categoryIcon(String? value) => setField<String>('category_icon', value);
}

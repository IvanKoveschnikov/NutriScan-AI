import '../database.dart';

class SavedDishesTable extends SupabaseTable<SavedDishesRow> {
  @override
  String get tableName => 'saved_dishes';

  @override
  SavedDishesRow createRow(Map<String, dynamic> data) => SavedDishesRow(data);
}

class SavedDishesRow extends SupabaseDataRow {
  SavedDishesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SavedDishesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime get date => getField<DateTime>('date')!;
  set date(DateTime value) => setField<DateTime>('date', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get aiAdvice => getField<String>('ai_advice');
  set aiAdvice(String? value) => setField<String>('ai_advice', value);

  int? get confidence => getField<int>('confidence');
  set confidence(int? value) => setField<int>('confidence', value);

  int? get weightGrams => getField<int>('weight_grams');
  set weightGrams(int? value) => setField<int>('weight_grams', value);
}

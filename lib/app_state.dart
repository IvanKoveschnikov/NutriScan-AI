import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<CategoriesDTStruct> _CategoriesAS = [
    CategoriesDTStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"1\",\"name\":\"овощи\",\"icon\":\"🥦\"}')),
    CategoriesDTStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"2\",\"name\":\"фрукты и ягоды\",\"icon\":\"🍎\"}')),
    CategoriesDTStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"3\",\"name\":\"мясо и птица\",\"icon\":\"🥩\"}')),
    CategoriesDTStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"4\",\"name\":\"рыба и морепродукты\",\"icon\":\"🐟\"}')),
    CategoriesDTStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"5\",\"name\":\"молочная продукция\",\"icon\":\"🥛\"}')),
    CategoriesDTStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"6\",\"name\":\"яйца\",\"icon\":\"🥚\"}')),
    CategoriesDTStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"7\",\"name\":\"крупы\",\"icon\":\"🌾\"}')),
    CategoriesDTStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"8\",\"name\":\"макаронные изделия\",\"icon\":\"🍝\"}')),
    CategoriesDTStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"9\",\"name\":\"хлебобулочные изделия\",\"icon\":\"🍞\"}')),
    CategoriesDTStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"10\",\"name\":\"бобовые\",\"icon\":\"🫘\"}')),
    CategoriesDTStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"11\",\"name\":\"орехи и семена\",\"icon\":\"🌰\"}')),
    CategoriesDTStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"12\",\"name\":\"грибы\",\"icon\":\"🍄\"}')),
    CategoriesDTStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"13\",\"name\":\"жиры и масла\",\"icon\":\"🧈\"}')),
    CategoriesDTStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"14\",\"name\":\"сухофрукты\",\"icon\":\"🍇\"}')),
    CategoriesDTStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"15\",\"name\":\"зелень и специи\",\"icon\":\"🌿\"}')),
    CategoriesDTStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"16\",\"name\":\"соусы и маринады\",\"icon\":\"🥫\"}')),
    CategoriesDTStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"17\",\"name\":\"сладости\",\"icon\":\"🍫\"}')),
    CategoriesDTStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"18\",\"name\":\"снэки и закуски\",\"icon\":\"🍿\"}')),
    CategoriesDTStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"19\",\"name\":\"напитки безалкогольные\",\"icon\":\"🥤\"}')),
    CategoriesDTStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"20\",\"name\":\"алкоголь\",\"icon\":\"🍷\"}')),
    CategoriesDTStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"21\",\"name\":\"консервы\",\"icon\":\"🥫\"}')),
    CategoriesDTStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"22\",\"name\":\"готовые блюда\",\"icon\":\"🍱\"}')),
    CategoriesDTStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"23\",\"name\":\"спортивное питание\",\"icon\":\"💪\"}')),
    CategoriesDTStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"24\",\"name\":\"разное\",\"icon\":\"🛒\"}')),
    CategoriesDTStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"25\",\"name\":\"мука\",\"icon\":\"🌾\"}')),
    CategoriesDTStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"26\",\"name\":\"масла растительные\",\"icon\":\"🌻\"}')),
    CategoriesDTStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"27\",\"name\":\"масла сливочные\",\"icon\":\"🧈\"}')),
    CategoriesDTStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"28\",\"name\":\"специи\",\"icon\":\"🧂\"}')),
    CategoriesDTStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"29\",\"name\":\"сыры\",\"icon\":\"🧀\"}')),
    CategoriesDTStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"30\",\"name\":\"колбасные изделия\",\"icon\":\"🥓\"}')),
    CategoriesDTStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"31\",\"name\":\"чай и кофе\",\"icon\":\"☕\"}')),
    CategoriesDTStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"32\",\"name\":\"десерты и выпечка\",\"icon\":\"🍰\"}')),
    CategoriesDTStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"33\",\"name\":\"замороженные продукты\",\"icon\":\"❄️\"}')),
    CategoriesDTStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"34\",\"name\":\"детское питание\",\"icon\":\"👶\"}')),
    CategoriesDTStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"35\",\"name\":\"веганские альтернативы\",\"icon\":\"🌱\"}')),
    CategoriesDTStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"36\",\"name\":\"мёд и варенье\",\"icon\":\"🍯\"}')),
    CategoriesDTStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"37\",\"name\":\"соки и нектары\",\"icon\":\"🧃\"}')),
    CategoriesDTStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"38\",\"name\":\"соль, сахар и подсластители\",\"icon\":\"🍭\"}')),
    CategoriesDTStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"39\",\"name\":\"соусы сухие и заправки\",\"icon\":\"🥣\"}')),
    CategoriesDTStruct.fromSerializableMap(
        jsonDecode('{\"id\":\"40\",\"name\":\"суперфуды\",\"icon\":\"🫐\"}'))
  ];
  List<CategoriesDTStruct> get CategoriesAS => _CategoriesAS;
  set CategoriesAS(List<CategoriesDTStruct> value) {
    _CategoriesAS = value;
  }

  void addToCategoriesAS(CategoriesDTStruct value) {
    CategoriesAS.add(value);
  }

  void removeFromCategoriesAS(CategoriesDTStruct value) {
    CategoriesAS.remove(value);
  }

  void removeAtIndexFromCategoriesAS(int index) {
    CategoriesAS.removeAt(index);
  }

  void updateCategoriesASAtIndex(
    int index,
    CategoriesDTStruct Function(CategoriesDTStruct) updateFn,
  ) {
    CategoriesAS[index] = updateFn(_CategoriesAS[index]);
  }

  void insertAtIndexInCategoriesAS(int index, CategoriesDTStruct value) {
    CategoriesAS.insert(index, value);
  }
}

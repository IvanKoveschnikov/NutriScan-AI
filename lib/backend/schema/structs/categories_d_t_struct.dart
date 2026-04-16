// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoriesDTStruct extends BaseStruct {
  CategoriesDTStruct({
    int? id,
    String? name,
    String? icon,
  })  : _id = id,
        _name = name,
        _icon = icon;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "icon" field.
  String? _icon;
  String get icon => _icon ?? '';
  set icon(String? val) => _icon = val;

  bool hasIcon() => _icon != null;

  static CategoriesDTStruct fromMap(Map<String, dynamic> data) =>
      CategoriesDTStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        icon: data['icon'] as String?,
      );

  static CategoriesDTStruct? maybeFromMap(dynamic data) => data is Map
      ? CategoriesDTStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'icon': _icon,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'icon': serializeParam(
          _icon,
          ParamType.String,
        ),
      }.withoutNulls;

  static CategoriesDTStruct fromSerializableMap(Map<String, dynamic> data) =>
      CategoriesDTStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        icon: deserializeParam(
          data['icon'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CategoriesDTStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CategoriesDTStruct &&
        id == other.id &&
        name == other.name &&
        icon == other.icon;
  }

  @override
  int get hashCode => const ListEquality().hash([id, name, icon]);
}

CategoriesDTStruct createCategoriesDTStruct({
  int? id,
  String? name,
  String? icon,
}) =>
    CategoriesDTStruct(
      id: id,
      name: name,
      icon: icon,
    );

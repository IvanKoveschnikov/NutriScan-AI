import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/my_products/component/categorii_chip_component/categorii_chip_component_widget.dart';
import '/my_products/component/product_chart_parameter_component/product_chart_parameter_component_widget.dart';
import 'add_product_widget.dart' show AddProductWidget;
import 'package:flutter/material.dart';

class AddProductModel extends FlutterFlowModel<AddProductWidget> {
  ///  Local state fields for this page.
  /// выбранная категория
  CategoriesDTStruct? categorie;
  void updateCategorieStruct(Function(CategoriesDTStruct) updateFn) {
    updateFn(categorie ??= CategoriesDTStruct());
  }

  String? nameProducts;

  /// калории
  double? caloriesKCAL = 0.0;

  /// белок
  double? protein = 0.0;

  /// жиры
  double? fats = 0.0;

  /// углеводы
  double? carbs = 0.0;

  /// алергены
  List<String> allergents = [];
  void addToAllergents(String item) => allergents.add(item);
  void removeFromAllergents(String item) => allergents.remove(item);
  void removeAtIndexFromAllergents(int index) => allergents.removeAt(index);
  void insertAtIndexInAllergents(int index, String item) =>
      allergents.insert(index, item);
  void updateAllergentsAtIndex(int index, Function(String) updateFn) =>
      allergents[index] = updateFn(allergents[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Models for categoriiChipComponent dynamic component.
  late FlutterFlowDynamicModels<CategoriiChipComponentModel>
      categoriiChipComponentModels;
  // Model for ProductChartParameterComponent component.
  late ProductChartParameterComponentModel productChartParameterComponentModel;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController1;
  String? get choiceChipsValue1 =>
      choiceChipsValueController1?.value?.firstOrNull;
  set choiceChipsValue1(String? val) =>
      choiceChipsValueController1?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController2;
  String? get choiceChipsValue2 =>
      choiceChipsValueController2?.value?.firstOrNull;
  set choiceChipsValue2(String? val) =>
      choiceChipsValueController2?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController3;
  String? get choiceChipsValue3 =>
      choiceChipsValueController3?.value?.firstOrNull;
  set choiceChipsValue3(String? val) =>
      choiceChipsValueController3?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController4;
  String? get choiceChipsValue4 =>
      choiceChipsValueController4?.value?.firstOrNull;
  set choiceChipsValue4(String? val) =>
      choiceChipsValueController4?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController5;
  String? get choiceChipsValue5 =>
      choiceChipsValueController5?.value?.firstOrNull;
  set choiceChipsValue5(String? val) =>
      choiceChipsValueController5?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController6;
  String? get choiceChipsValue6 =>
      choiceChipsValueController6?.value?.firstOrNull;
  set choiceChipsValue6(String? val) =>
      choiceChipsValueController6?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {
    categoriiChipComponentModels =
        FlutterFlowDynamicModels(() => CategoriiChipComponentModel());
    productChartParameterComponentModel =
        createModel(context, () => ProductChartParameterComponentModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    categoriiChipComponentModels.dispose();
    productChartParameterComponentModel.dispose();
  }
}

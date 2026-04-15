import '/flutter_flow/flutter_flow_util.dart';
import '/home/component/macro_info/macro_info_widget.dart';
import 'meal_card_widget.dart' show MealCardWidget;
import 'package:flutter/material.dart';

class MealCardModel extends FlutterFlowModel<MealCardWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for macroInfo component.
  late MacroInfoModel macroInfoModel1;
  // Model for macroInfo component.
  late MacroInfoModel macroInfoModel2;
  // Model for macroInfo component.
  late MacroInfoModel macroInfoModel3;

  @override
  void initState(BuildContext context) {
    macroInfoModel1 = createModel(context, () => MacroInfoModel());
    macroInfoModel2 = createModel(context, () => MacroInfoModel());
    macroInfoModel3 = createModel(context, () => MacroInfoModel());
  }

  @override
  void dispose() {
    macroInfoModel1.dispose();
    macroInfoModel2.dispose();
    macroInfoModel3.dispose();
  }
}

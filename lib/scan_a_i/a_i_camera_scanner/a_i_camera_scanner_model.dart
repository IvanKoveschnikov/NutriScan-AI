import '/flutter_flow/flutter_flow_util.dart';
import '/scan_a_i/component/confidence_indicator/confidence_indicator_widget.dart';
import '/scan_a_i/component/ingredient_chip/ingredient_chip_widget.dart';
import '/scan_a_i/component/portion_widget/portion_widget_widget.dart';
import 'a_i_camera_scanner_widget.dart' show AICameraScannerWidget;
import 'package:flutter/material.dart';

class AICameraScannerModel extends FlutterFlowModel<AICameraScannerWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ConfidenceIndicator component.
  late ConfidenceIndicatorModel confidenceIndicatorModel;
  // Model for IngredientChip component.
  late IngredientChipModel ingredientChipModel1;
  // Model for IngredientChip component.
  late IngredientChipModel ingredientChipModel2;
  // Model for IngredientChip component.
  late IngredientChipModel ingredientChipModel3;
  // Model for IngredientChip component.
  late IngredientChipModel ingredientChipModel4;
  // Model for PortionWidget component.
  late PortionWidgetModel portionWidgetModel;

  @override
  void initState(BuildContext context) {
    confidenceIndicatorModel =
        createModel(context, () => ConfidenceIndicatorModel());
    ingredientChipModel1 = createModel(context, () => IngredientChipModel());
    ingredientChipModel2 = createModel(context, () => IngredientChipModel());
    ingredientChipModel3 = createModel(context, () => IngredientChipModel());
    ingredientChipModel4 = createModel(context, () => IngredientChipModel());
    portionWidgetModel = createModel(context, () => PortionWidgetModel());
  }

  @override
  void dispose() {
    confidenceIndicatorModel.dispose();
    ingredientChipModel1.dispose();
    ingredientChipModel2.dispose();
    ingredientChipModel3.dispose();
    ingredientChipModel4.dispose();
    portionWidgetModel.dispose();
  }
}

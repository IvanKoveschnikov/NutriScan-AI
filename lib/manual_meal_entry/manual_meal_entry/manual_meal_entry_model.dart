import '/flutter_flow/flutter_flow_util.dart';
import '/manual_meal_entry/component/ingredient_chip2/ingredient_chip2_widget.dart';
import '/manual_meal_entry/component/tab_button/tab_button_widget.dart';
import '/manual_meal_entry/component/template_item/template_item_widget.dart';
import 'manual_meal_entry_widget.dart' show ManualMealEntryWidget;
import 'package:flutter/material.dart';

class ManualMealEntryModel extends FlutterFlowModel<ManualMealEntryWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TabButton component.
  late TabButtonModel tabButtonModel1;
  // Model for TabButton component.
  late TabButtonModel tabButtonModel2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for IngredientChip2 component.
  late IngredientChip2Model ingredientChip2Model1;
  // Model for IngredientChip2 component.
  late IngredientChip2Model ingredientChip2Model2;
  // Model for IngredientChip2 component.
  late IngredientChip2Model ingredientChip2Model3;
  // Model for TemplateItem component.
  late TemplateItemModel templateItemModel1;
  // Model for TemplateItem component.
  late TemplateItemModel templateItemModel2;

  @override
  void initState(BuildContext context) {
    tabButtonModel1 = createModel(context, () => TabButtonModel());
    tabButtonModel2 = createModel(context, () => TabButtonModel());
    ingredientChip2Model1 = createModel(context, () => IngredientChip2Model());
    ingredientChip2Model2 = createModel(context, () => IngredientChip2Model());
    ingredientChip2Model3 = createModel(context, () => IngredientChip2Model());
    templateItemModel1 = createModel(context, () => TemplateItemModel());
    templateItemModel2 = createModel(context, () => TemplateItemModel());
  }

  @override
  void dispose() {
    tabButtonModel1.dispose();
    tabButtonModel2.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    ingredientChip2Model1.dispose();
    ingredientChip2Model2.dispose();
    ingredientChip2Model3.dispose();
    templateItemModel1.dispose();
    templateItemModel2.dispose();
  }
}

import '/dish_details/component/ingredient_item2/ingredient_item2_widget.dart';
import '/dish_details/component/macro_badge2/macro_badge2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dish_details_widget.dart' show DishDetailsWidget;
import 'package:flutter/material.dart';

class DishDetailsModel extends FlutterFlowModel<DishDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for MacroBadge2 component.
  late MacroBadge2Model macroBadge2Model1;
  // Model for MacroBadge2 component.
  late MacroBadge2Model macroBadge2Model2;
  // Model for MacroBadge2 component.
  late MacroBadge2Model macroBadge2Model3;
  // Model for MacroBadge2 component.
  late MacroBadge2Model macroBadge2Model4;
  // State field(s) for Slider widget.
  double? sliderValue;
  // Model for IngredientItem2 component.
  late IngredientItem2Model ingredientItem2Model1;
  // Model for IngredientItem2 component.
  late IngredientItem2Model ingredientItem2Model2;
  // Model for IngredientItem2 component.
  late IngredientItem2Model ingredientItem2Model3;

  @override
  void initState(BuildContext context) {
    macroBadge2Model1 = createModel(context, () => MacroBadge2Model());
    macroBadge2Model2 = createModel(context, () => MacroBadge2Model());
    macroBadge2Model3 = createModel(context, () => MacroBadge2Model());
    macroBadge2Model4 = createModel(context, () => MacroBadge2Model());
    ingredientItem2Model1 = createModel(context, () => IngredientItem2Model());
    ingredientItem2Model2 = createModel(context, () => IngredientItem2Model());
    ingredientItem2Model3 = createModel(context, () => IngredientItem2Model());
  }

  @override
  void dispose() {
    macroBadge2Model1.dispose();
    macroBadge2Model2.dispose();
    macroBadge2Model3.dispose();
    macroBadge2Model4.dispose();
    ingredientItem2Model1.dispose();
    ingredientItem2Model2.dispose();
    ingredientItem2Model3.dispose();
  }
}

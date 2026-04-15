import '/flutter_flow/flutter_flow_util.dart';
import '/meal_templates/component/category_chip/category_chip_widget.dart';
import '/meal_templates/component/template_card/template_card_widget.dart';
import 'meal_templates_widget.dart' show MealTemplatesWidget;
import 'package:flutter/material.dart';

class MealTemplatesModel extends FlutterFlowModel<MealTemplatesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for CategoryChip component.
  late CategoryChipModel categoryChipModel1;
  // Model for CategoryChip component.
  late CategoryChipModel categoryChipModel2;
  // Model for CategoryChip component.
  late CategoryChipModel categoryChipModel3;
  // Model for CategoryChip component.
  late CategoryChipModel categoryChipModel4;
  // Model for CategoryChip component.
  late CategoryChipModel categoryChipModel5;
  // Model for TemplateCard component.
  late TemplateCardModel templateCardModel1;
  // Model for TemplateCard component.
  late TemplateCardModel templateCardModel2;
  // Model for TemplateCard component.
  late TemplateCardModel templateCardModel3;
  // Model for TemplateCard component.
  late TemplateCardModel templateCardModel4;
  // Model for TemplateCard component.
  late TemplateCardModel templateCardModel5;

  @override
  void initState(BuildContext context) {
    categoryChipModel1 = createModel(context, () => CategoryChipModel());
    categoryChipModel2 = createModel(context, () => CategoryChipModel());
    categoryChipModel3 = createModel(context, () => CategoryChipModel());
    categoryChipModel4 = createModel(context, () => CategoryChipModel());
    categoryChipModel5 = createModel(context, () => CategoryChipModel());
    templateCardModel1 = createModel(context, () => TemplateCardModel());
    templateCardModel2 = createModel(context, () => TemplateCardModel());
    templateCardModel3 = createModel(context, () => TemplateCardModel());
    templateCardModel4 = createModel(context, () => TemplateCardModel());
    templateCardModel5 = createModel(context, () => TemplateCardModel());
  }

  @override
  void dispose() {
    categoryChipModel1.dispose();
    categoryChipModel2.dispose();
    categoryChipModel3.dispose();
    categoryChipModel4.dispose();
    categoryChipModel5.dispose();
    templateCardModel1.dispose();
    templateCardModel2.dispose();
    templateCardModel3.dispose();
    templateCardModel4.dispose();
    templateCardModel5.dispose();
  }
}

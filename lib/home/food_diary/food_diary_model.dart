import '/flutter_flow/flutter_flow_util.dart';
import '/home/component/meal_card/meal_card_widget.dart';
import '/home/component/progres_bar/progres_bar_widget.dart';
import 'food_diary_widget.dart' show FoodDiaryWidget;
import 'package:flutter/material.dart';

class FoodDiaryModel extends FlutterFlowModel<FoodDiaryWidget> {
  ///  Local state fields for this page.

  DateTime? selectedDate;

  List<DateTime> daysWithData = [];
  void addToDaysWithData(DateTime item) => daysWithData.add(item);
  void removeFromDaysWithData(DateTime item) => daysWithData.remove(item);
  void removeAtIndexFromDaysWithData(int index) => daysWithData.removeAt(index);
  void insertAtIndexInDaysWithData(int index, DateTime item) =>
      daysWithData.insert(index, item);
  void updateDaysWithDataAtIndex(int index, Function(DateTime) updateFn) =>
      daysWithData[index] = updateFn(daysWithData[index]);

  ///  State fields for stateful widgets in this page.

  // Model for progresBar component.
  late ProgresBarModel progresBarModel;
  // Model for MealCard component.
  late MealCardModel mealCardModel;

  @override
  void initState(BuildContext context) {
    progresBarModel = createModel(context, () => ProgresBarModel());
    mealCardModel = createModel(context, () => MealCardModel());
  }

  @override
  void dispose() {
    progresBarModel.dispose();
    mealCardModel.dispose();
  }
}

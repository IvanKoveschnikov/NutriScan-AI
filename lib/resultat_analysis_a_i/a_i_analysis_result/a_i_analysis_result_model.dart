import '/flutter_flow/flutter_flow_util.dart';
import '/resultat_analysis_a_i/component/macro_stat/macro_stat_widget.dart';
import '/resultat_analysis_a_i/component/weight_item/weight_item_widget.dart';
import 'a_i_analysis_result_widget.dart' show AIAnalysisResultWidget;
import 'package:flutter/material.dart';

class AIAnalysisResultModel extends FlutterFlowModel<AIAnalysisResultWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for MacroStat component.
  late MacroStatModel macroStatModel1;
  // Model for MacroStat component.
  late MacroStatModel macroStatModel2;
  // Model for MacroStat component.
  late MacroStatModel macroStatModel3;
  // Model for WeightItem component.
  late WeightItemModel weightItemModel1;
  // Model for WeightItem component.
  late WeightItemModel weightItemModel2;
  // Model for WeightItem component.
  late WeightItemModel weightItemModel3;
  // Model for WeightItem component.
  late WeightItemModel weightItemModel4;

  @override
  void initState(BuildContext context) {
    macroStatModel1 = createModel(context, () => MacroStatModel());
    macroStatModel2 = createModel(context, () => MacroStatModel());
    macroStatModel3 = createModel(context, () => MacroStatModel());
    weightItemModel1 = createModel(context, () => WeightItemModel());
    weightItemModel2 = createModel(context, () => WeightItemModel());
    weightItemModel3 = createModel(context, () => WeightItemModel());
    weightItemModel4 = createModel(context, () => WeightItemModel());
  }

  @override
  void dispose() {
    macroStatModel1.dispose();
    macroStatModel2.dispose();
    macroStatModel3.dispose();
    weightItemModel1.dispose();
    weightItemModel2.dispose();
    weightItemModel3.dispose();
    weightItemModel4.dispose();
  }
}

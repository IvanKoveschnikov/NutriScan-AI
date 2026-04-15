import '/flutter_flow/flutter_flow_util.dart';
import '/my_products/component/filter_chip/filter_chip_widget.dart';
import '/my_products/component/product_card/product_card_widget.dart';
import 'my_products_widget.dart' show MyProductsWidget;
import 'package:flutter/material.dart';

class MyProductsModel extends FlutterFlowModel<MyProductsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for FilterChip component.
  late FilterChipModel filterChipModel1;
  // Model for FilterChip component.
  late FilterChipModel filterChipModel2;
  // Model for FilterChip component.
  late FilterChipModel filterChipModel3;
  // Model for FilterChip component.
  late FilterChipModel filterChipModel4;
  // Model for FilterChip component.
  late FilterChipModel filterChipModel5;
  // Model for FilterChip component.
  late FilterChipModel filterChipModel6;
  // Models for ProductCard dynamic component.
  late FlutterFlowDynamicModels<ProductCardModel> productCardModels;

  @override
  void initState(BuildContext context) {
    filterChipModel1 = createModel(context, () => FilterChipModel());
    filterChipModel2 = createModel(context, () => FilterChipModel());
    filterChipModel3 = createModel(context, () => FilterChipModel());
    filterChipModel4 = createModel(context, () => FilterChipModel());
    filterChipModel5 = createModel(context, () => FilterChipModel());
    filterChipModel6 = createModel(context, () => FilterChipModel());
    productCardModels = FlutterFlowDynamicModels(() => ProductCardModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    filterChipModel1.dispose();
    filterChipModel2.dispose();
    filterChipModel3.dispose();
    filterChipModel4.dispose();
    filterChipModel5.dispose();
    filterChipModel6.dispose();
    productCardModels.dispose();
  }
}

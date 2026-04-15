import '/flutter_flow/flutter_flow_util.dart';
import '/products/component/category_chip2/category_chip2_widget.dart';
import 'my_custom_products2_widget.dart' show MyCustomProducts2Widget;
import 'package:flutter/material.dart';

class MyCustomProducts2Model extends FlutterFlowModel<MyCustomProducts2Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for CategoryChip2 component.
  late CategoryChip2Model categoryChip2Model1;
  // Model for CategoryChip2 component.
  late CategoryChip2Model categoryChip2Model2;
  // Model for CategoryChip2 component.
  late CategoryChip2Model categoryChip2Model3;
  // Model for CategoryChip2 component.
  late CategoryChip2Model categoryChip2Model4;
  // Model for CategoryChip2 component.
  late CategoryChip2Model categoryChip2Model5;
  // Model for CategoryChip2 component.
  late CategoryChip2Model categoryChip2Model6;

  @override
  void initState(BuildContext context) {
    categoryChip2Model1 = createModel(context, () => CategoryChip2Model());
    categoryChip2Model2 = createModel(context, () => CategoryChip2Model());
    categoryChip2Model3 = createModel(context, () => CategoryChip2Model());
    categoryChip2Model4 = createModel(context, () => CategoryChip2Model());
    categoryChip2Model5 = createModel(context, () => CategoryChip2Model());
    categoryChip2Model6 = createModel(context, () => CategoryChip2Model());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    categoryChip2Model1.dispose();
    categoryChip2Model2.dispose();
    categoryChip2Model3.dispose();
    categoryChip2Model4.dispose();
    categoryChip2Model5.dispose();
    categoryChip2Model6.dispose();
  }
}

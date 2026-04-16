import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'enter_parametr_product_model.dart';
export 'enter_parametr_product_model.dart';

/// экран ввода данных о продукте пользовательском
class EnterParametrProductWidget extends StatefulWidget {
  const EnterParametrProductWidget({super.key});

  @override
  State<EnterParametrProductWidget> createState() =>
      _EnterParametrProductWidgetState();
}

class _EnterParametrProductWidgetState
    extends State<EnterParametrProductWidget> {
  late EnterParametrProductModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EnterParametrProductModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: MediaQuery.sizeOf(context).height * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
              FlutterFlowTheme.of(context).designToken.spacing.lg),
          topRight: Radius.circular(
              FlutterFlowTheme.of(context).designToken.spacing.lg),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [],
      ),
    );
  }
}

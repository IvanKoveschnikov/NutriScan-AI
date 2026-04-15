import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'enter_data_time_model.dart';
export 'enter_data_time_model.dart';

class EnterDataTimeWidget extends StatefulWidget {
  const EnterDataTimeWidget({super.key});

  @override
  State<EnterDataTimeWidget> createState() => _EnterDataTimeWidgetState();
}

class _EnterDataTimeWidgetState extends State<EnterDataTimeWidget> {
  late EnterDataTimeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EnterDataTimeModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400.0,
      child: custom_widgets.CustomDatePicker(
        width: double.infinity,
        height: 400.0,
      ),
    );
  }
}

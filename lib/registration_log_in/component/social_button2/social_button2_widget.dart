import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'social_button2_model.dart';
export 'social_button2_model.dart';

class SocialButton2Widget extends StatefulWidget {
  const SocialButton2Widget({
    super.key,
    this.icon,
  });

  final Widget? icon;

  @override
  State<SocialButton2Widget> createState() => _SocialButton2WidgetState();
}

class _SocialButton2WidgetState extends State<SocialButton2Widget> {
  late SocialButton2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SocialButton2Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(24.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).divider,
          width: 1.5,
        ),
      ),
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: widget.icon!,
      ),
    );
  }
}

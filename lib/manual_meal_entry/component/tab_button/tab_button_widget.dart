import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'tab_button_model.dart';
export 'tab_button_model.dart';

class TabButtonWidget extends StatefulWidget {
  const TabButtonWidget({
    super.key,
    this.active,
    this.label,
  });

  final bool? active;
  final String? label;

  @override
  State<TabButtonWidget> createState() => _TabButtonWidgetState();
}

class _TabButtonWidgetState extends State<TabButtonWidget> {
  late TabButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TabButtonModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.0,
      decoration: BoxDecoration(
        color: widget.active!
            ? FlutterFlowTheme.of(context).primary
            : Colors.transparent,
        borderRadius: BorderRadius.circular(24.0),
      ),
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Text(
        valueOrDefault<String>(
          widget.label,
          'По описанию',
        ),
        style: FlutterFlowTheme.of(context).labelLarge.override(
              font: GoogleFonts.nunito(
                fontWeight: FontWeight.w600,
                fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
              ),
              color: widget.active!
                  ? FlutterFlowTheme.of(context).primaryBackground
                  : FlutterFlowTheme.of(context).secondaryText,
              fontSize: 15.0,
              letterSpacing: 0.0,
              fontWeight: FontWeight.w600,
              fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
              lineHeight: 1.3,
            ),
      ),
    );
  }
}

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'confidence_indicator_model.dart';
export 'confidence_indicator_model.dart';

class ConfidenceIndicatorWidget extends StatefulWidget {
  const ConfidenceIndicatorWidget({
    super.key,
    this.percent,
  });

  final double? percent;

  @override
  State<ConfidenceIndicatorWidget> createState() =>
      _ConfidenceIndicatorWidgetState();
}

class _ConfidenceIndicatorWidgetState extends State<ConfidenceIndicatorWidget> {
  late ConfidenceIndicatorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConfidenceIndicatorModel());
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
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.circular(9999.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).accent1,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.auto_awesome_rounded,
              color: FlutterFlowTheme.of(context).primary,
              size: 14.0,
            ),
            Text(
              'Уверенность ИИ: ${widget.percent?.toString()}%',
              style: FlutterFlowTheme.of(context).labelSmall.override(
                    font: GoogleFonts.nunito(
                      fontWeight: FontWeight.bold,
                      fontStyle:
                          FlutterFlowTheme.of(context).labelSmall.fontStyle,
                    ),
                    color: FlutterFlowTheme.of(context).primary,
                    fontSize: 11.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelSmall.fontStyle,
                    lineHeight: 1.2,
                  ),
            ),
          ].divide(SizedBox(width: 4.0)),
        ),
      ),
    );
  }
}

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'macro_info_model.dart';
export 'macro_info_model.dart';

/// информация для отображения данных о блюде.
///
/// Например, белки, жири, углеводы
class MacroInfoWidget extends StatefulWidget {
  const MacroInfoWidget({
    super.key,
    Color? colorContainer,
    required this.name,
    required this.quantity,
  }) : this.colorContainer = colorContainer ?? const Color(0xFF667080);

  /// цвет точки
  final Color colorContainer;

  /// название
  final String? name;

  /// количество
  final int? quantity;

  @override
  State<MacroInfoWidget> createState() => _MacroInfoWidgetState();
}

class _MacroInfoWidgetState extends State<MacroInfoWidget> {
  late MacroInfoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MacroInfoModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 15.0,
            height: 15.0,
            decoration: BoxDecoration(
              color: valueOrDefault<Color>(
                widget.colorContainer,
                FlutterFlowTheme.of(context).secondaryText,
              ),
              shape: BoxShape.circle,
            ),
          ),
          Text(
            '${widget.name}: ${widget.quantity?.toString()} г',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.dmSans(
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  fontSize: 13.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
        ].divide(SizedBox(width: 8.0)),
      ),
    );
  }
}

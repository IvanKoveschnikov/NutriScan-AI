import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'categorii_chip_component_model.dart';
export 'categorii_chip_component_model.dart';

/// Компонент категории
class CategoriiChipComponentWidget extends StatefulWidget {
  const CategoriiChipComponentWidget({
    super.key,
    required this.id,
    required this.callbackAction,
    required this.categoriesDT,
  });

  final int? id;
  final Future Function(

      /// выбранная категория
      CategoriesDTStruct categorie)? callbackAction;
  final CategoriesDTStruct? categoriesDT;

  @override
  State<CategoriiChipComponentWidget> createState() =>
      _CategoriiChipComponentWidgetState();
}

class _CategoriiChipComponentWidgetState
    extends State<CategoriiChipComponentWidget> {
  late CategoriiChipComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoriiChipComponentModel());
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: 64.0,
              height: 64.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).divider,
                borderRadius: BorderRadius.circular(
                    FlutterFlowTheme.of(context).designToken.radius.full),
                border: Border.all(
                  color: Colors.transparent,
                  width: 2.0,
                ),
              ),
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Text(
                valueOrDefault<String>(
                  widget.categoriesDT?.icon,
                  '-',
                ),
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      font: GoogleFonts.dmSans(
                        fontWeight:
                            FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                      fontSize: 20.0,
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
              ),
            ),
          ),
          Text(
            valueOrDefault<String>(
              widget.categoriesDT?.name,
              '-',
            ),
            style: FlutterFlowTheme.of(context).labelSmall.override(
                  font: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w600,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelSmall.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).secondaryText,
                  fontSize: 10.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                  fontStyle: FlutterFlowTheme.of(context).labelSmall.fontStyle,
                  lineHeight: 1.2,
                ),
          ),
        ].divide(SizedBox(
            height: FlutterFlowTheme.of(context).designToken.spacing.sm)),
      ),
    );
  }
}

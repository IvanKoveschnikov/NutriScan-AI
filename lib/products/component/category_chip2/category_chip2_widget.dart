import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'category_chip2_model.dart';
export 'category_chip2_model.dart';

class CategoryChip2Widget extends StatefulWidget {
  const CategoryChip2Widget({
    super.key,
    this.selected,
    this.label,
  });

  final bool? selected;
  final String? label;

  @override
  State<CategoryChip2Widget> createState() => _CategoryChip2WidgetState();
}

class _CategoryChip2WidgetState extends State<CategoryChip2Widget> {
  late CategoryChip2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoryChip2Model());
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
        color: widget.selected == false
            ? FlutterFlowTheme.of(context).secondaryBackground
            : Color(0xFFA8B5A0),
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          color: Color(0xFFA8B5A0),
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(
            FlutterFlowTheme.of(context).designToken.spacing.sm,
            FlutterFlowTheme.of(context).designToken.spacing.md,
            FlutterFlowTheme.of(context).designToken.spacing.sm,
            FlutterFlowTheme.of(context).designToken.spacing.md),
        child: Text(
          valueOrDefault<String>(
            widget.label,
            'All',
          ),
          style: FlutterFlowTheme.of(context).labelLarge.override(
                font: GoogleFonts.dmSans(
                  fontWeight: FontWeight.w500,
                  fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                ),
                color: widget.selected == false
                    ? FlutterFlowTheme.of(context).secondaryText
                    : Color(0xFFFAF7F2),
                fontSize: 14.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w500,
                fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                lineHeight: 1.3,
              ),
        ),
      ),
    );
  }
}

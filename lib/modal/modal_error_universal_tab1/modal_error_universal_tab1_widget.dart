import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'modal_error_universal_tab1_model.dart';
export 'modal_error_universal_tab1_model.dart';

/// модульное окно ошибки
class ModalErrorUniversalTab1Widget extends StatefulWidget {
  const ModalErrorUniversalTab1Widget({
    super.key,
    required this.titleError,
    required this.descriptionError,
    required this.action1,
    required this.textButton1,
    Color? colorButton1,
    Color? colorContainer,
    Color? colorIcon,
    required this.icon,
  })  : this.colorButton1 = colorButton1 ?? const Color(0xFFB13E3E),
        this.colorContainer = colorContainer ?? const Color(0xFFFEE2E2),
        this.colorIcon = colorIcon ?? const Color(0xFFB13E3E);

  /// название ошибки
  final String? titleError;

  /// описание ошибки
  final String? descriptionError;

  /// действие 1
  final Future Function()? action1;

  /// название первой кнопки
  final String? textButton1;

  /// цвет 1 кнопки
  final Color colorButton1;

  /// цвет контейнера
  final Color colorContainer;

  /// цвет иконки
  final Color colorIcon;

  /// иконка
  final Widget? icon;

  @override
  State<ModalErrorUniversalTab1Widget> createState() =>
      _ModalErrorUniversalTab1WidgetState();
}

class _ModalErrorUniversalTab1WidgetState
    extends State<ModalErrorUniversalTab1Widget> {
  late ModalErrorUniversalTab1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModalErrorUniversalTab1Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(32.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24.0),
        child: Container(
          width: 340.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            boxShadow: [
              BoxShadow(
                blurRadius: 16.0,
                color: Color(0x1A000000),
                offset: Offset(
                  0.0,
                  8.0,
                ),
                spreadRadius: 0.0,
              )
            ],
            borderRadius: BorderRadius.circular(24.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(32.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 64.0,
                  height: 64.0,
                  decoration: BoxDecoration(
                    color: widget.colorContainer,
                    shape: BoxShape.circle,
                  ),
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: widget.icon!,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      widget.titleError!,
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            font: GoogleFonts.nunito(
                              fontWeight: FontWeight.w600,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 20.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleLarge
                                .fontStyle,
                            lineHeight: 1.3,
                          ),
                    ),
                    Text(
                      widget.descriptionError!,
                      textAlign: TextAlign.center,
                      maxLines: 4,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.dmSans(
                              fontWeight: FontWeight.normal,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 15.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.normal,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                            lineHeight: 1.5,
                          ),
                    ),
                  ].divide(SizedBox(height: 8.0)),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        // Действие 1
                        await widget.action1?.call();
                      },
                      text: widget.textButton1!,
                      options: FFButtonOptions(
                        height: 44.0,
                        padding: EdgeInsets.all(16.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: widget.colorButton1,
                        textStyle: TextStyle(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0,
                        ),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                    ),
                  ].divide(SizedBox(height: 8.0)),
                ),
              ].divide(SizedBox(height: 24.0)),
            ),
          ),
        ),
      ),
    );
  }
}

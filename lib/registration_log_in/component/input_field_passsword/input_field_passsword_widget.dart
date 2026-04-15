import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'input_field_passsword_model.dart';
export 'input_field_passsword_model.dart';

class InputFieldPassswordWidget extends StatefulWidget {
  const InputFieldPassswordWidget({
    super.key,
    this.label,
    this.hint,
    this.icon,
  });

  final String? label;
  final String? hint;
  final Widget? icon;

  @override
  State<InputFieldPassswordWidget> createState() =>
      _InputFieldPassswordWidgetState();
}

class _InputFieldPassswordWidgetState extends State<InputFieldPassswordWidget> {
  late InputFieldPassswordModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InputFieldPassswordModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          valueOrDefault<String>(
            widget.label,
            'Пароль',
          ),
          style: FlutterFlowTheme.of(context).labelMedium.override(
                font: GoogleFonts.nunito(
                  fontWeight: FontWeight.w600,
                  fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                ),
                color: FlutterFlowTheme.of(context).secondaryText,
                fontSize: 13.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w600,
                fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                lineHeight: 1.3,
              ),
        ),
        TextFormField(
          controller: _model.textController,
          focusNode: _model.textFieldFocusNode,
          obscureText: !_model.passwordVisibility,
          decoration: InputDecoration(
            hintText: '••••••••',
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).hint,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(18.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).primaryText,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(18.0),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0x00000000),
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(18.0),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0x00000000),
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(18.0),
            ),
            filled: true,
            fillColor: FlutterFlowTheme.of(context).secondaryBackground,
            prefixIcon: widget.icon,
            suffixIcon: InkWell(
              onTap: () async {
                safeSetState(() =>
                    _model.passwordVisibility = !_model.passwordVisibility);
              },
              focusNode: FocusNode(skipTraversal: true),
              child: Icon(
                _model.passwordVisibility
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                size: 22,
              ),
            ),
          ),
          style: TextStyle(),
          validator: _model.textControllerValidator.asValidator(context),
        ),
      ].divide(SizedBox(height: 4.0)),
    );
  }
}

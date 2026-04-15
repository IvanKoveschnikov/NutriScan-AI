import '/flutter_flow/flutter_flow_util.dart';
import '/registration_log_in/component/social_button2/social_button2_widget.dart';
import '/index.dart';
import 'register_widget.dart' show RegisterWidget;
import 'package:flutter/material.dart';

class RegisterModel extends FlutterFlowModel<RegisterWidget> {
  ///  Local state fields for this page.
  /// условия и политика
  bool politica = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldName widget.
  FocusNode? textFieldNameFocusNode;
  TextEditingController? textFieldNameTextController;
  String? Function(BuildContext, String?)? textFieldNameTextControllerValidator;
  // State field(s) for TextFieldEmail widget.
  FocusNode? textFieldEmailFocusNode;
  TextEditingController? textFieldEmailTextController;
  String? Function(BuildContext, String?)?
      textFieldEmailTextControllerValidator;
  // State field(s) for TextFieldPassword widget.
  FocusNode? textFieldPasswordFocusNode;
  TextEditingController? textFieldPasswordTextController;
  late bool textFieldPasswordVisibility;
  String? Function(BuildContext, String?)?
      textFieldPasswordTextControllerValidator;
  // Model for SocialButton2 component.
  late SocialButton2Model socialButton2Model1;
  // Model for SocialButton2 component.
  late SocialButton2Model socialButton2Model2;
  // Model for SocialButton2 component.
  late SocialButton2Model socialButton2Model3;

  @override
  void initState(BuildContext context) {
    textFieldPasswordVisibility = false;
    socialButton2Model1 = createModel(context, () => SocialButton2Model());
    socialButton2Model2 = createModel(context, () => SocialButton2Model());
    socialButton2Model3 = createModel(context, () => SocialButton2Model());
  }

  @override
  void dispose() {
    textFieldNameFocusNode?.dispose();
    textFieldNameTextController?.dispose();

    textFieldEmailFocusNode?.dispose();
    textFieldEmailTextController?.dispose();

    textFieldPasswordFocusNode?.dispose();
    textFieldPasswordTextController?.dispose();

    socialButton2Model1.dispose();
    socialButton2Model2.dispose();
    socialButton2Model3.dispose();
  }
}

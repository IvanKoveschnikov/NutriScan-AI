import '/flutter_flow/flutter_flow_util.dart';
import '/registration_log_in/component/social_button/social_button_widget.dart';
import '/index.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieEmail widget.
  FocusNode? textFieEmailFocusNode;
  TextEditingController? textFieEmailTextController;
  String? Function(BuildContext, String?)? textFieEmailTextControllerValidator;
  // State field(s) for TextFieldPassword widget.
  FocusNode? textFieldPasswordFocusNode;
  TextEditingController? textFieldPasswordTextController;
  late bool textFieldPasswordVisibility;
  String? Function(BuildContext, String?)?
      textFieldPasswordTextControllerValidator;
  // Model for SocialButton component.
  late SocialButtonModel socialButtonModel1;
  // Model for SocialButton component.
  late SocialButtonModel socialButtonModel2;

  @override
  void initState(BuildContext context) {
    textFieldPasswordVisibility = false;
    socialButtonModel1 = createModel(context, () => SocialButtonModel());
    socialButtonModel2 = createModel(context, () => SocialButtonModel());
  }

  @override
  void dispose() {
    textFieEmailFocusNode?.dispose();
    textFieEmailTextController?.dispose();

    textFieldPasswordFocusNode?.dispose();
    textFieldPasswordTextController?.dispose();

    socialButtonModel1.dispose();
    socialButtonModel2.dispose();
  }
}

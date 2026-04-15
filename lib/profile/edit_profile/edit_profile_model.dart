import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'edit_profile_widget.dart' show EditProfileWidget;
import 'package:flutter/material.dart';

class EditProfileModel extends FlutterFlowModel<EditProfileWidget> {
  ///  Local state fields for this page.
  /// старое фото
  String? oldPhoto;

  /// новое загруженое фото локально
  FFUploadedFile? newPhotoLocal;

  String? name;

  String? surname;

  /// О себе или цели
  String? aboutOrGoal;

  /// вес кг
  double? weight;

  /// рост см
  double? height;

  /// ник
  String? nick;

  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uDNewPhoto1 = false;
  FFUploadedFile uploadedLocalFile_uDNewPhoto1 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uDNewPhoto1 = '';

  bool isDataUploading_uploadDataN7w = false;
  FFUploadedFile uploadedLocalFile_uploadDataN7w =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // State field(s) for TextFielNick widget.
  FocusNode? textFielNickFocusNode;
  TextEditingController? textFielNickTextController;
  String? Function(BuildContext, String?)? textFielNickTextControllerValidator;
  // State field(s) for TextFieldName widget.
  FocusNode? textFieldNameFocusNode;
  TextEditingController? textFieldNameTextController;
  String? Function(BuildContext, String?)? textFieldNameTextControllerValidator;
  // State field(s) for TextFildSurName widget.
  FocusNode? textFildSurNameFocusNode;
  TextEditingController? textFildSurNameTextController;
  String? Function(BuildContext, String?)?
      textFildSurNameTextControllerValidator;
  // State field(s) for TextFieldAboutOrGoal widget.
  FocusNode? textFieldAboutOrGoalFocusNode;
  TextEditingController? textFieldAboutOrGoalTextController;
  String? Function(BuildContext, String?)?
      textFieldAboutOrGoalTextControllerValidator;
  // State field(s) for TextFieldWeight widget.
  FocusNode? textFieldWeightFocusNode;
  TextEditingController? textFieldWeightTextController;
  String? Function(BuildContext, String?)?
      textFieldWeightTextControllerValidator;
  // State field(s) for TextFieldHaight widget.
  FocusNode? textFieldHaightFocusNode;
  TextEditingController? textFieldHaightTextController;
  String? Function(BuildContext, String?)?
      textFieldHaightTextControllerValidator;
  bool isDataUploading_uDNewPhoto2 = false;
  FFUploadedFile uploadedLocalFile_uDNewPhoto2 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uDNewPhoto2 = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFielNickFocusNode?.dispose();
    textFielNickTextController?.dispose();

    textFieldNameFocusNode?.dispose();
    textFieldNameTextController?.dispose();

    textFildSurNameFocusNode?.dispose();
    textFildSurNameTextController?.dispose();

    textFieldAboutOrGoalFocusNode?.dispose();
    textFieldAboutOrGoalTextController?.dispose();

    textFieldWeightFocusNode?.dispose();
    textFieldWeightTextController?.dispose();

    textFieldHaightFocusNode?.dispose();
    textFieldHaightTextController?.dispose();
  }
}

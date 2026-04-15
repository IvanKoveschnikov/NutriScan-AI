import '/flutter_flow/flutter_flow_util.dart';
import '/profile/component/menu_item/menu_item_widget.dart';
import '/profile/component/user_data_component/user_data_component_widget.dart';
import '/index.dart';
import 'user_profile_widget.dart' show UserProfileWidget;
import 'package:flutter/material.dart';

class UserProfileModel extends FlutterFlowModel<UserProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for UserDataComponent component.
  late UserDataComponentModel userDataComponentModel;
  // Model for MenuItem component.
  late MenuItemModel menuItemModel1;
  // Model for MenuItem component.
  late MenuItemModel menuItemModel2;
  // Model for MenuItem component.
  late MenuItemModel menuItemModel3;

  @override
  void initState(BuildContext context) {
    userDataComponentModel =
        createModel(context, () => UserDataComponentModel());
    menuItemModel1 = createModel(context, () => MenuItemModel());
    menuItemModel2 = createModel(context, () => MenuItemModel());
    menuItemModel3 = createModel(context, () => MenuItemModel());
  }

  @override
  void dispose() {
    userDataComponentModel.dispose();
    menuItemModel1.dispose();
    menuItemModel2.dispose();
    menuItemModel3.dispose();
  }
}

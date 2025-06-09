import '/components/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'esp_widget.dart' show EspWidget;
import 'package:flutter/material.dart';

class EspModel extends FlutterFlowModel<EspWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sideBar component.
  late SideBarModel sideBarModel;

  @override
  void initState(BuildContext context) {
    sideBarModel = createModel(context, () => SideBarModel());
  }

  @override
  void dispose() {
    sideBarModel.dispose();
  }
}

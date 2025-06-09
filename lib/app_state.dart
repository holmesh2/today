import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _isSelected = '';
  String get isSelected => _isSelected;
  set isSelected(String value) {
    _isSelected = value;
  }

  dynamic _splash;
  dynamic get splash => _splash;
  set splash(dynamic value) {
    _splash = value;
  }
}

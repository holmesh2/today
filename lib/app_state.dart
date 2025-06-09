import 'package:flutter/material.dart';
import '/backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

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

  List<dynamic> _splash = [];
  List<dynamic> get splash => _splash;
  set splash(List<dynamic> value) {
    _splash = value;
  }

  void addToSplash(dynamic value) {
    splash.add(value);
  }

  void removeFromSplash(dynamic value) {
    splash.remove(value);
  }

  void removeAtIndexFromSplash(int index) {
    splash.removeAt(index);
  }

  void updateSplashAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    splash[index] = updateFn(_splash[index]);
  }

  void insertAtIndexInSplash(int index, dynamic value) {
    splash.insert(index, value);
  }
}

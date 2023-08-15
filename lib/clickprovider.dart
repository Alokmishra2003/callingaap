import 'package:flutter/material.dart';

enum CallState { Incoming, Accepted, Rejected }

class CallProvider with ChangeNotifier {
  CallState _callState = CallState.Incoming;

  CallState get callState => _callState;

  void acceptCall() {
    _callState = CallState.Accepted;
    notifyListeners();
  }

  void rejectCall() {
    _callState = CallState.Rejected;
    notifyListeners();
  }
}

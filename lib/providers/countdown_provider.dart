import 'package:flutter/material.dart';

class CountdownProvider extends ChangeNotifier {
  Duration duration = const Duration(seconds: 75);
  bool isRunnning = false;

  void startStopTimer() {
    if (!isRunnning) {
      //startTimer();
    }

    isRunnning = !isRunnning;
    notifyListeners();
  }
}

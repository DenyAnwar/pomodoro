import 'dart:async';
import 'package:flutter/material.dart';

class TimerService extends ChangeNotifier {
  late Timer timer;
  double currentDuration = 1500;
  double selectedTime = 1500;
  bool timerPlaying = false;
  int rounds = 0;
  int goal = 0;
  String currentState = "FOCUS";

  void start() {}
  void pause() {}
  void reset() {}
  void selectTime() {}
  void handleNextRound() {}
}

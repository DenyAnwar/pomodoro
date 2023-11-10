import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:myth_green_pomodoro_app/screens/widgets/timer_card.dart';
import 'package:myth_green_pomodoro_app/screens/timer_service.dart';
import 'package:myth_green_pomodoro_app/screens/widgets/timer_options.dart';
import 'package:myth_green_pomodoro_app/screens/widgets/time_controller.dart';
import 'package:myth_green_pomodoro_app/screens/widgets/progress.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Color renderColor(String currentState) {
    if (currentState == "FOCUS") {
      return Colors.redAccent;
    } else {
      return Colors.greenAccent;
    }
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return Scaffold(
      backgroundColor: renderColor(provider.currentState),
      appBar: AppBar(
        elevation: 10,
        backgroundColor: renderColor(provider.currentState),
        title: const Text(
          'POMODORO TIMER',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            iconSize: 40,
            color: Colors.white,
            onPressed: () =>
                Provider.of<TimerService>(context, listen: false).reset(),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              const TimerCard(),
              const SizedBox(
                height: 50,
              ),
              if (provider.currentState != "BREAK")
                TimerOptions()
              else
                const SizedBox(
                  height: 50,
                ),
              const SizedBox(
                height: 100,
              ),
              const TimeController(),
              const SizedBox(
                height: 50,
              ),
              const Progress(),
            ],
          ),
        ),
      ),
    );
  }
}

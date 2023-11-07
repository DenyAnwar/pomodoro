import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:myth_green_pomodoro_app/screens/widgets/timer_card.dart';
import 'package:myth_green_pomodoro_app/screens/timer_service.dart';

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
          'POMOTIMER',
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
          child: const Column(
            children: [
              SizedBox(
                height: 40,
              ),
              TimerCard(),
              SizedBox(height: 50),
              // TimerOptions(),
              SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}

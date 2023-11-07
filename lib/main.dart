import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:myth_green_pomodoro_app/screens/timer_service.dart';

import 'screens/home_screen.dart';

void main() => runApp(ChangeNotifierProvider<TimerService>(
      create: (_) => TimerService(),
      child: const MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

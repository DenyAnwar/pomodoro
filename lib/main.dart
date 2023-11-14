import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:myth_green_pomodoro_app/screens/timer_service.dart';
import 'package:flutter/services.dart';

import 'screens/home_screen.dart';

void main() => runApp(ChangeNotifierProvider<TimerService>(
      create: (_) => TimerService(),
      child: const MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

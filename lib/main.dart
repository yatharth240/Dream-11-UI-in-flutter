import 'package:flutter/material.dart';

import 'package:dream11clone/screens/home.dart';
import 'package:dream11clone/screens/createTeam.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Dream 11 Clone',
      // home: Home(),
      home: CreateTeam(),
    );
  }
}

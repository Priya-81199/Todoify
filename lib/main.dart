import 'package:flutter/material.dart';
import 'package:todoify/Screens/tasks_screen.dart';
import 'package:todoify/Screens/tasks_screen.dart';

void main() {
  runApp(todoify());
}

class todoify extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<todoify> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TasksScreen(),
    );
  }
}


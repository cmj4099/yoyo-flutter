import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_examples/screens/tasks_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TasksScreen(),
    );
  }
}

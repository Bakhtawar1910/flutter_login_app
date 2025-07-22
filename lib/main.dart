import 'package:flutter/material.dart';
import 'package:todoapp/view/auth/login.dart';

void main() {
  runApp(ToDoApp());
}

class ToDoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'To Do App',
        debugShowCheckedModeBanner: false,
        home: LoginScreen());
  }
}

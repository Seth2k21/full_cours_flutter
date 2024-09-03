import 'package:flutter/material.dart';
import 'package:input_flutter/pages/todo_page.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: TodoPage(),
    );
  }
}

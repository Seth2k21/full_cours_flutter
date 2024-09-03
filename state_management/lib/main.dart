import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/counter_model.dart';
import 'home_page.dart';

void main() {
  runApp(
      ChangeNotifierProvider(create: (context) => CounterModel(),
      child: const MyApp(),
      ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter Demo',
      theme: ThemeData(
        colorScheme:ColorScheme.fromSeed(
            seedColor: Colors.deepPurple),
        useMaterial3: true,
        ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

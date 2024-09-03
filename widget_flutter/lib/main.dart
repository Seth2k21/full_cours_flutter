import 'package:flutter/material.dart';
import 'package:widget_flutter/pages/first_page.dart';
import 'package:widget_flutter/pages/home_page.dart';
import 'package:widget_flutter/pages/setting_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

   // function & methods


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:FirstPage(),
      routes: {
        '/firstpage' : (context) => FirstPage(),
        '/homepage' : (context) => HomePage(),
        '/settingpage' : (context) =>SettingPage(),
      },
    );
  }
}

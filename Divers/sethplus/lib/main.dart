import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sethplus/pages/add_event_page.dart';
import 'package:sethplus/pages/event_page.dart';
import 'package:sethplus/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  int _currentIndex = 0;


  setCurrentIndex(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.brown,
            title: [
              Text("Acceuil"),
              Text("Liiste des conférences"),
              Text("Ajouter un planing")
            ][_currentIndex],

          ),

          body: [
            HomePage(),
            EventPage(),
            AddEventPage()
          ][_currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) => setCurrentIndex(index),
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
              backgroundColor: Colors.brown,
              selectedItemColor: Colors.green,
              unselectedItemColor: Colors.grey,
              iconSize: 32,
              elevation: 25,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Accueil'
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.calendar_month),
                    label: 'Planing'
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.add),
                    label: 'Ajout'
                ),

              ]
          ),
        )
    );
  }
}








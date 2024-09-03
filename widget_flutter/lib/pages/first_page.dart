import 'package:flutter/material.dart';
import 'package:widget_flutter/pages/home_page.dart';
import 'package:widget_flutter/pages/profil_page.dart';
import 'package:widget_flutter/pages/setting_page.dart';

class FirstPage extends StatefulWidget {
   FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
   // this page track of the current page to display
   int _selectedIndex = 0;

   // this methode updates new selected index
   void _navigateBottomBar(int index){
     setState(() {
       _selectedIndex = index;
     });

   }

   // the pages we have in our app
   final List _pages = [

      // homepage
     const HomePage(),

     //profilepage
      const ProfilPage(),

     //settingpage
     const SettingPage(),
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("1st Page")),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: const [
          // Home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),

          // Profile
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          // Setting
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
      ),
    );
  }
}

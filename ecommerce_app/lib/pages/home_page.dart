import 'package:ecommerce_app/components/bottom_nav_bar.dart';
import 'package:ecommerce_app/pages/cart_page.dart';
import 'package:ecommerce_app/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // this selected index is to control the bottom nav bar
  int _selectedIndex = 0;

  //this method will update our selected index
  // when the user taps on the bottom bar
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // pages to display
  final List<Widget> _pages = [
    //shop page
    const ShopPage(),

    //cart page
    const CartPage(),
  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(
                icon:const Padding(
                  padding:  EdgeInsets.only(left: 12),
                  child: Icon(Icons.menu,
                  color: Colors.black,
                  ),
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                  );
          }
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
              Column(
                children: [
                  // logo
                  DrawerHeader(
                    child: Image.asset(
                      'lib/images/nike.jpeg',
                    ),
                  ),

                  const Padding(
                    padding:  EdgeInsets.only(left: 25),
                    child: ListTile(
                      leading: Icon(Icons.home),
                      title: Text("Home",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),

                  const Padding(
                    padding:  EdgeInsets.only(left: 25),
                    child: ListTile(
                      leading: Icon(Icons.info),
                      title: Text("About",
                        style: TextStyle(fontSize: 20),),),
                  ),
                ],
              ),

            const Padding(
              padding:  EdgeInsets.only(left: 25, bottom: 40),
              child: ListTile(
                leading: Icon(Icons.logout),
                title: Text("logout",
                  style: TextStyle(fontSize: 20),),),
            ),

          ],
        ),
      ),
     body: _pages[_selectedIndex],
    );
  }
}

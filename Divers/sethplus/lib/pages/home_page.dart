 import 'package:flutter/material.dart';
 import 'package:flutter_svg/flutter_svg.dart';
 import 'event_page.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Image.asset("assets/images/mini.jpg",
            color: Colors.green,
          ),
          const Text("Sethplus 2024",
            style: TextStyle(
                fontSize: 42,
                fontFamily: 'Poppins'
            ),
          ),
          const Text("Salon virtuel de l'informatique en 2024",
            style: TextStyle(
              fontSize: 24,
              color: Colors.brown,
            ),
            textAlign: TextAlign.center,
          ),

          Padding(padding: EdgeInsets.only(top: 15),
          ),

        ],
      ),
    );
  }
}

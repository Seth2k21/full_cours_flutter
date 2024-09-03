import 'package:flutter/material.dart';

import 'home_page.dart';


class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
             Padding(
               padding: const EdgeInsets.all(25),
               child: Image.asset('lib/images/nike.jpeg',
               height: 248,),
             ),

              const SizedBox(height: 48),

              //title
               const Text(
                 "Just Do it",
                 style: TextStyle(
                   fontSize: 25,
                   fontWeight: FontWeight.bold,
                 ),
               ),

              const SizedBox(height: 48),

              //sub title

             const Text(
                  "Brand new sneakers and custom kicks made with premium quality",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
               textAlign: TextAlign.center,
                ),
              const SizedBox(height: 25,),

              //start a new button
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(25),
                    child: Center(
                      child: Text("Shop Now",
                      style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                      ),
                    ),
                  ),

                ),
              )

              //start new button
            ],
          ),
        ),
      ),
    );
  }
}

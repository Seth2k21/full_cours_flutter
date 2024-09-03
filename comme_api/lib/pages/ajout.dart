import 'package:flutter/material.dart';

import '../config/app_strings.dart';


class Ajout extends StatelessWidget {
  const Ajout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Page d'ajout",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontFamily: 'Urbanist',
          fontSize: 22,
        ),
      ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('title',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Urbanist',
                fontSize: 22,
              ),
            ),

            SizedBox(height: 14,),

             TextField(
              decoration: InputDecoration(
                hintText: AppStrings.title,
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12),
                  ),
                ),
                filled: true,
                fillColor: Colors.white.withOpacity(0.5),
              ),
            ),

          SizedBox(height: 14,),
         
            ElevatedButton(
              onPressed: () {

              },

              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.black,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50),
                      )
                  )
              ),
                child: const Text('Ajouter',
                style: TextStyle(
                  fontSize: 20
                ),),

            ),
          ],
        ),
      )
    );
  }
}

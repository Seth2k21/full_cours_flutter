import 'package:flutter/material.dart';
import 'package:minimal_shop/components/my_button.dart';


class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.shopping_bag,
              color: Theme.of(context).colorScheme.inversePrimary,
              size: 72,
            ),

            const SizedBox(height: 25),
          
            //title
            const Text(
              'Minimal shop',
              style: TextStyle(
                fontSize: 20,
              fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            //subtitle
             Text('Premium Quality Products',
            style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),),

            const SizedBox(height: 10),

            //Button
            MyButton(
                onTap: () => Navigator.pushNamed(context, '/shop_page'),
                child: const Icon(Icons.arrow_forward))
          ],
        ),
      ),
    );
  }
}



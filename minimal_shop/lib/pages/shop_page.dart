import 'package:flutter/material.dart';
import 'package:minimal_shop/components/my_product_tile.dart';
import 'package:minimal_shop/main.dart';
import 'package:provider/provider.dart';
import '../components/my_drawer.dart';
import '../models/shop.dart';



class MyShopPage extends StatelessWidget {
  const MyShopPage({super.key});

  @override
  Widget build(BuildContext context) {

    // access products in shop
    final products = context.watch<Shop>().shop;



    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Center(child: const Text("Shop page")),
        actions: [
           //go to cart button
          IconButton(
              onPressed: () => Navigator.pushNamed(context, '/cart_page'),
              icon: Icon(Icons.shopping_cart))

        ],
      ),
     drawer: const MyDrawer(),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: ListView(
        children: [
               const SizedBox(height:25,),
          //shop subtitle
            Center(
               child: Text("Pick from a selected of premium products",
               style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
               ),
           ),

          //product list
          SizedBox(
            height: 550,
            child: ListView.builder(
              itemCount: products.length,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(15),
              itemBuilder: (context, index){
                //get each individual product from shop
                final product = products[index];

                //return as a product tile UI
                return MyProductTile(
                    product: product);
              },
            ),
          ),

        ],
      )
    );
  }
}

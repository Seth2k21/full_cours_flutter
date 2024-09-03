import 'package:flutter/material.dart';
import 'package:minimal_shop/components/my_list_tile.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
      Column(
        children: [
          // drawer header: logo
          DrawerHeader(child: Icon(
            Icons.shopping_bag,
            color: Theme.of(context).colorScheme.inversePrimary,
            size: 72,
          ),
          ),

          const SizedBox(height: 10),

          //shop tile
          MyListTile(
              icon: Icons.home,
              text: "Shop",
              onTap: () {
                //pop drawer first
                Navigator.pop(context);

                //go to cart page
                Navigator.pushNamed(context, '/shop_page');

              },
          ),
          //cart tile
          MyListTile(
              icon: Icons.shopping_cart,
              text: "Cart",
              onTap: () {
                //pop drawer first
                Navigator.pop(context);

                //go to cart page
                Navigator.pushNamed(context, '/cart_page');
              }),

        ],
      ),
          //exit shop tile
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: MyListTile(
                icon: Icons.logout,
                text: "Exit",
                onTap: () => Navigator.pushNamed(context, '/intro_page')),
          ),
        ],
      ),
    );
  }
}

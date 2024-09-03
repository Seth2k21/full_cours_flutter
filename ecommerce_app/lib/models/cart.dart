import 'package:flutter/cupertino.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {

  //list of shoes for sale
 List<Shoe> shoeShop = [
   Shoe(
       name: 'Zom FREAK',
       price: '236',
       description: 'The forward-thinking design of his The forward-thinking design of his The forward-thinking design of his',
       imagePath: 'lib/images/shoe1.jpeg',
   ),
   Shoe(
     name: 'Zom FREAK',
     price: '236',
     description: 'The forward-thinking design of his The forward-thinking design of his The forward-thinking design of his',
     imagePath: 'lib/images/shoe2.jpeg',
   ),
   Shoe(
     name: 'Zom shoe',
     price: '220',
     description: 'The forward-thinking design of his',
     imagePath: 'lib/images/shoe3.jpeg',
   ),
   Shoe(
     name: 'Zom FREAK',
     price: '236',
     description: 'The forward-thinking design of his',
     imagePath: 'lib/images/shoe4.jpeg',
   ),
   Shoe(
     name: 'ZForce Ford',
     price: '236',
     description: 'The forward-thinking design of his',
     imagePath: 'lib/images/shoe5.jpeg',
   ),
   Shoe(
     name: 'Kyrie Ad',
     price: '236',
     description: 'The forward-thinking design of his',
     imagePath: 'lib/images/shoe6.jpeg',
   ),
 ];

  //list of items in user cart
   List<Shoe> userCart = [];


  // get list of shoes for sale
   List<Shoe> getShoeList() {
     return shoeShop;
   }

  // get cart
   List<Shoe> getUserCart() {
     return userCart;
   }
  // add items to cart
  void addItemToCart(Shoe shoe){
     userCart.add(shoe);
     notifyListeners();
  }

  //remove item from cart
  void removeItemFormCart(Shoe shoe) {
     userCart.remove(shoe);
     notifyListeners();
  }
}
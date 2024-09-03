import 'package:flutter/cupertino.dart';
import 'package:minimal_shop/models/product.dart';

class Shop extends ChangeNotifier{

  //product for sale
  final List<Product> _shop = [
    Product(
        name: "Product 1",
        price: 99.9,
        description: "Item desription... more description texte",
        imagePath: 'assets/im1.jpeg',
      ),
    Product(
      name: "Product 2",
      price: 99.9,
      description: "Item desription...desription... more description texte",
      imagePath: 'assets/im6.jpeg',
    ),
    Product(
      name: "Product 3",
      price: 99.9,
      description: "Item desription...desription... more description texte",
      imagePath: 'assets/im3.jpeg',
    ),
    Product(
      name: "Product 4",
      price: 99.9,
      description: "Item desription...desription... more description texte",
      imagePath: 'assets/im4.jpeg',
    ),
    Product(
      name: "Product 5",
      price: 99.9,
      description: "Item desription...desription... more description texte",
      imagePath: 'assets/im50.jpeg',
    ),
    Product(
      name: "Product 6",
      price: 99.9,
      description: "Item desription...desription... more description texte",
      imagePath: 'assets/shoe8.jpeg',
    ),
    Product(
      name: "Product 7",
      price: 99.9,
      description: "Item desription...desription... more description texte",
      imagePath: 'assets/shoe7.jpeg',
    ),
    Product(
      name: "Product 8",
      price: 99.9,
      description: "Item desription...desription... more description texte",
      imagePath: 'assets/shoe6.jpeg',
    ),
    Product(
      name: "Product 9",
      price: 99.9,
      description: "Item desription...desription... more description texte",
      imagePath: 'assets/shoe5.jpeg',
    ),
    Product(
      name: "Product 10",
      price: 99.9,
      description: "Item desription...desription... more description texte",
      imagePath: 'assets/im4.jpeg',
    ),
  ];


  //user cart
  List<Product> _cart = [];


  //get product list
  List<Product> get shop => _shop;

  //get user cart
  List<Product> get cart => _cart;

  //add item to cart
 void addToCart(Product item){
   _cart.add(item);
   notifyListeners();
 }

  //remove item from cart
void removeFromCart(Product item) {
   _cart.remove(item);
   notifyListeners();
}

}
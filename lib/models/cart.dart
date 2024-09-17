import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/models/shoe.dart';

class Cart extends ChangeNotifier{

  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(name: "Billie x Nike", price: '367', imagepath: "assets/images/billieEilish.jpeg", description: "A Nike x Billie Combo to the Moon 🌑"),
    Shoe(name: "Travis x Nike", price: '250', imagepath: "assets/images/cactus.jpeg", description: "Travis with the cactus 🌵"),
    Shoe(name: "Air Jordan", price: '589', imagepath: "assets/images/download.jpeg", description: "Legendary Jordan Experience ⛹🏿‍♂️"),
    Shoe(name: "Nike Dunk", price: '600', imagepath: "assets/images/nikedunk.png", description: "Dunking on them opps"),
  ];


  //list of items in user cart
  List<Shoe> userCart = [];


  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  } 

  // get cart
  List<Shoe> getUserCart(){
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items from cart
  void removeIetmfromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }

}
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/models/cart.dart';
import 'package:flutter_ecommerce/models/shoe.dart';
import 'package:flutter_ecommerce/pages/cart_tile.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 30.0),
          child: Row(
            children: [
              Text("My Cart", style: TextStyle(fontWeight: FontWeight.bold),),
              Icon(Icons.shopping_bag)
            ],
          ),
          
        ),
        SizedBox(height: 30,),
        Expanded(child: ListView.builder(
          itemCount: value.getUserCart().length,
          itemBuilder: ((context, index){
          Shoe shoe = value.getUserCart()[index];


          return CartTile(shoe: shoe);
        })))
      ],
    ));
  }
}
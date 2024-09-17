import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/models/cart.dart';
import 'package:flutter_ecommerce/models/shoe.dart';
import 'package:provider/provider.dart';


class CartTile extends StatelessWidget {
  Shoe shoe;

  CartTile({super.key, required this.shoe});

  void removeItemFromCart(context){
    Provider.of<Cart>(context, listen: false).removeIetmfromCart(shoe);
  }



  @override
  Widget build(BuildContext context) {


      


    return Container(
       
      padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 15.0),
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8.0)
      ),
      child: ListTile(
        
        leading: Image.asset(shoe.imagepath),
        title: Text(shoe.name, style: TextStyle(fontWeight: FontWeight.bold),),
        subtitle: Text("\$" + shoe.price),
        trailing: IconButton(onPressed: () { removeItemFromCart(context); }, icon: Icon(Icons.delete), style: ButtonStyle(iconColor: MaterialStatePropertyAll(Colors.black)),),
      ),
    );
  }
}
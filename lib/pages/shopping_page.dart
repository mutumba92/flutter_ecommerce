import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/models/cart.dart';
import 'package:flutter_ecommerce/models/shoe.dart';
import 'package:flutter_ecommerce/pages/shoe_tile.dart';
import 'package:provider/provider.dart';

class ShoppingPage extends StatefulWidget {
  const ShoppingPage({super.key});

  @override
  State<ShoppingPage> createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {

void addShoeToCart(Shoe shoe){
  Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

  // alert user when shoe added successfully
  showDialog(context: context, builder: (context) => AlertDialog(
    title: Text(shoe.name + " successfully added to cart"),
    content: TextButton(onPressed: (){}, child: Text("View Cart", style: TextStyle(color: Colors.white),),style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black)),)
  
  ));

}


  @override
  Widget build(BuildContext context) {
    return Consumer<Cart> (builder: (context, value, child)=> Column(
        children: [
             // search bar
             Container(
              padding: EdgeInsets.all(12.0),
              margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
              decoration: BoxDecoration(color: Colors.white54, borderRadius: BorderRadius.circular(8)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                
                Text("Search"),
                Icon(Icons.search)
              ],),
             ),



      //message 
      Padding(
        padding: const EdgeInsets.all(25.0),
        child: Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8.0)),
          child: Text("Every One Flies ....... Some more than the others", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),)),
      ),



      
      //top pics
      Padding(
        padding: const EdgeInsets.symmetric(horizontal:25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("Hot Picks 🔥", style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold
            ),),
            Text("See all...", style: TextStyle(color: Colors.blue),),
          ],
        ),
      ),

      SizedBox(height: 20.0,),
      Expanded(child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index){
        
        Shoe shoe = value.getShoeList()[index];
        return ShoeTile(
          onTap: () => addShoeToCart(shoe),
          shoe: shoe,
        );
      }))

        ],



    ));
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_ecommerce/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15.0),
      width: 250,
      height: 400,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12.0)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                      // shoe picture
                      ClipRRect(
                        
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.asset(shoe.imagepath,)),
          
          //description
          Text(shoe.description),
        
          //price + details
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  
                  children: [
                    Text(shoe.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                
                    Text("\$" + shoe.price, style: TextStyle(color: Colors.grey, ),)
                  ],
                  
                ),
              ),
              GestureDetector(
                onTap: onTap,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8.0)),
                  child: Icon(Icons.add, size: 20,color: Colors.white,)),
              )
            ],
          )
          
        
        
          //add to cart button
            ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/components/bottom_nav_component.dart';
import 'package:flutter_ecommerce/pages/shopping_page.dart';
import 'package:flutter_ecommerce/pages/cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {

  // track selected index
  int _selectedIndex = 0;

  // method updates navBar Index
  void navigateBottomBar(index){
    setState(() {
      _selectedIndex = index;
      print("tab changed");
    });
}

  // pages to dislplay
  List <Widget> pages = [
      //shopping page
      const ShoppingPage(),

      // cart page
      const CartPage(),


  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(builder: (context)=> IconButton(onPressed: (){
          Scaffold.of(context).openDrawer();
        }, icon: Icon(Icons.menu), color: Colors.black,
        
        )),
        
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: Column(children: [
          DrawerHeader(child: Image.asset("assets/images/nike.png",)),
          const Padding(
            padding: EdgeInsets.all(18.0),
            child: ListTile(
              leading: Icon(Icons.home, color: Colors.white), title: Text("Home", style: TextStyle(color: Colors.white),),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(18.0),
            child: ListTile(
              leading: Icon(Icons.info_outlined, color: Colors.white), title: Text("About", style: TextStyle(color: Colors.white),),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(18.0),
            child: ListTile(
              leading: Icon(Icons.logout_rounded, color: Colors.white), title: Text("Log Out", style: TextStyle(color: Colors.white),),
            ),
          )
         
        ],),
      ),
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNav(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: pages[_selectedIndex],
    );
  }
}
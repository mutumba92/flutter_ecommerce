import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_ecommerce/models/cart.dart';
import 'package:flutter_ecommerce/pages/homepage.dart';
import 'package:flutter_ecommerce/pages/splash_screen.dart';
import 'package:flutter_ecommerce/pages/terms_conditions.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        
      ),
      home: const Starter(),
    )
  ,
    );
    }
}

class Starter extends StatelessWidget {
  const Starter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          
          children: [
            SizedBox(height: 150,),
            Image.asset('assets/images/nike.png', height: 300,),
            Text("Just Do it", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),textAlign: TextAlign.center,),
            SizedBox(height: 50,),
            Text(" 'Shop the latest Sneakers at awesome prices' ", style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20, fontFamily: AutofillHints.familyName),textAlign: TextAlign.center,),
            SizedBox(height: 120,),
            GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage())),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text("Shop Now", style: TextStyle(color: Colors.white),),
                ),
                decoration: BoxDecoration(
                  color: Colors.black, 
                  borderRadius: BorderRadius.circular(8.0) 
                ),
              ),
            )
          ],),
      ),
    );
  }
}



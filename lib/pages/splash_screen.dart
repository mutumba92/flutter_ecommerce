import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/pages/homepage.dart';
import 'package:flutter_ecommerce/pages/terms_conditions.dart';
import 'package:lottie/lottie.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  get splash => null;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          child: AnimatedSplashScreen(splash: 
          
            Column(
              children: [
                Center(
                  child: Column(
                    children: [
                      LottieBuilder.asset("assets/Animation - 1726213349677.json"),
                      Text("Welcome To Giant Panda", style: TextStyle(fontWeight: FontWeight.bold),)
                    ],
                  ),
                )
              ],
            )
          , nextScreen: TermsAnConditions(),
          splashIconSize: 500,
          
          ),
      
      ),
    );
  }
}
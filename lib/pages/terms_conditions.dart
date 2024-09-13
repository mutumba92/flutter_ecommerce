import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TermsAnConditions extends StatelessWidget {
  const TermsAnConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: FloatingActionButton.extended(
          onPressed: () {
            // Add your onPressed code here!
            print('Full Width Floating Action Button Pressed');
          },
          elevation: 0.00,
          label: Text('I Agree to the Terms & Conditions', style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.black,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Padding(

        padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 45.0),
        child: Scrollbar(
          child: Container(
            color: Colors.transparent,
            height: 700,
            width: 500 ,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text("Terms & Conditions", style: TextStyle(fontWeight: FontWeight.w800),),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(softWrap: true, style: TextStyle(fontWeight: FontWeight.w400), "              \b Last Updated: [2024.08.13] \b \n\nWelcome to Giant Panda App!\n\nThese Terms and Conditions govern your use of our application Giant Panda designed for Giant Panda kindergarten and primary school community in Uganda. By accessing or using the App, you agree to be bound by these Terms. If you do not agree to these Terms, do not use the App.\n1. Acceptance of Terms. \nBy using the App, you affirm that you are aware and accept these Terms in their entirety. If you are under the age of 18, you confirm that your parents or guardians have reviewed and agreed to these Terms on your behalf.\n2. Privacy Policy.\nOur Privacy Policy explains how we collect, use, and protect your personal information. By using the App, you consent to our collection and use of your information as described in our Privacy Policy.\n3. User Accounts\nAccount Creation. To access certain features of the App, you may need to create an account. You agree to provide accurate and complete information during the registration process and to keep your account information up to date.Parental Consent: If you are creating an account for a child, you affirm that you are their parent or legal guardian and provide consent for them to use the App.\n4. Account Security.\nYou are responsible for maintaining the confidentiality of your account credentials and for any activities conducted through your account.4. Acceptable UseYou agree to use the App for lawful purposes and in a way that does not infringe the rights of, restrict or inhibit anyone else's use and enjoyment of the App. Prohibited behavior includes"),
                ],
              ),
              
            )
          ),
        ),
      ),
      
    );
  }
}
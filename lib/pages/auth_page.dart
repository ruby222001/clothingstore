//check if user is signed in or not
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shoppingapp/pages/home_page.dart';
import 'package:shoppingapp/pages/loginorregister.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context,snapshot){
          //user logged in 
          if(snapshot.hasData){
            return  HomePage();
          }
          else{
            return const LoginOrRegisterPage();
            
                      }
        },
        ),
    );
  }
}
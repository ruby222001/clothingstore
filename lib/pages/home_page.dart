import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

final user = FirebaseAuth.instance.currentUser!;
void signUserOut(){
  FirebaseAuth.instance.signOut();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: IconButton(onPressed: signUserOut, icon: Icon(Icons.logout),)
      ),
      appBar: AppBar(),
      body: Container(),
    );
  }
}
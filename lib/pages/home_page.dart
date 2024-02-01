import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shoppingapp/models/category.dart';
import 'package:shoppingapp/models/products.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

final user = FirebaseAuth.instance.currentUser!;
void signUserOut(){
  FirebaseAuth.instance.signOut();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      drawer: Drawer(
        child: IconButton(onPressed: signUserOut, icon: Icon(Icons.logout),)
      ),
      appBar: AppBar(),
      body: Container(
child:         Column(
  children: [
    Text(
      'Categories',
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 40,

    ),),
    Row(
      
      children: [
        Category(categoryname: 'All'),
        Category(categoryname: 'Jackets'),
        Category(categoryname: 'Jeans'),
      ],
    ),

    Container(
      child: Column(
        children: [
        ],
      ),
    )
  ],
),

// category

      ),
    );
  }
}
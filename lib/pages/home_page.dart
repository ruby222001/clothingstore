import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shoppingapp/models/category.dart';
import 'package:shoppingapp/models/products.dart';
import 'package:shoppingapp/models/shop.dart';
import 'package:shoppingapp/pages/cartpage.dart';
import 'package:shoppingapp/pages/detailpage.dart';

class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 final  List<Shop> productlist =[
//jackets
Shop(productname: 'Linen Blazer', productprice: '89.99', productimage: 'lib/images/abc.jpg'),
Shop(productname: 'Linen Blazer', productprice: '89.99', productimage: 'lib/images/abc.jpg'),

Shop(productname: 'Linen Blazer', productprice: '89.99', productimage: 'lib/images/abc.jpg'),

Shop(productname: 'Linen Blazer', productprice: '89.99', productimage: 'lib/images/abc.jpg'),

Shop(productname: 'Linen Blazer', productprice: '89.99', productimage: 'lib/images/abc.jpg'),

//shoes


 ];

final user = FirebaseAuth.instance.currentUser!;

void signUserOut(){
  FirebaseAuth.instance.signOut();
}

void  productdetailspage(int index){
  Navigator.push(
    context,MaterialPageRoute(
      builder: (context)=>  DetailPage(shop: productlist[index],
      ),
      ),
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      drawer: Drawer(
        child: IconButton(onPressed: signUserOut, icon: const Icon(Icons.logout),)
      ),
      appBar: AppBar(
        title: GestureDetector(
          onTap:(){
            Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage(),
            ),
            );
          },
          child: Icon(Icons.shopping_bag),
          ),
      ),
      body: Column(
        children: [
          const Text(
            'Categories',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
      
          ),),
          const Row(
            
            children: [
              Category(categoryname: 'All'),
              Category(categoryname: 'Jackets'),
              Category(categoryname: 'Jeans'),
            ],
          ),
      
        const SizedBox(height: 10),
          Expanded(child: GridView.builder(
            itemCount: 4,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
            itemBuilder:  (context,index) => ProductTile(
          shop: productlist[index], onTap:() =>  productdetailspage(index)

          ),
          
          ),
          ),
         ],
         ),
          );
         
  }
          
        
   
  }

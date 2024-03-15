import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shoppingapp/models/category.dart';
import 'package:shoppingapp/models/drawer.dart';
import 'package:shoppingapp/models/products.dart';
import 'package:shoppingapp/models/shop.dart';
import 'package:shoppingapp/pages/cartpage.dart';
import 'package:shoppingapp/pages/detailpage.dart';

class HomePage extends StatefulWidget {
   const HomePage({super.key});

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
int isselected=0;
int currentIndex =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      drawer: MyDrawer(),
      appBar: AppBar(
        title: GestureDetector(
          onTap:(){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const CartPage(),
            ),
            );
          },
          child: const Icon(Icons.shopping_bag),
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
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
           Category(categoryname: "AllProducts", index: 0),
          Category(categoryname: "Jackets", index: 1),

           Category(categoryname: "Shoes", index: 2),

           Category(categoryname: "Bags", index: 3),

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

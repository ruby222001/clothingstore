import 'package:flutter/material.dart';
import 'package:shoppingapp/models/shop.dart';

// ignore: must_be_immutable
class ProductTile extends StatelessWidget {
  void Function()? onTap;
  final Shop shop;
   ProductTile({super.key,
  required this.shop,
  required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white),
        
          child: Column(
            children: [
              Image.asset(
                shop.productimage,
              height: 150,
        
              ),
        const Icon(Icons.arrow_back),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                
                children: [
                  
                  Text(shop.productname,
                  style: const TextStyle(fontWeight: FontWeight.bold,
                  ),
                  ),
                  Text(shop.productprice,
                  style: const TextStyle(fontWeight: FontWeight.bold,
                  ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
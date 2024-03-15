import 'package:flutter/material.dart';
import 'package:shoppingapp/models/shop.dart';

class DetailPage extends StatefulWidget {
  final Shop shop;
   const DetailPage({super.key, required this.shop});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int quantityCount = 0;
  void decrementQuantity(){
    setState(() {
      quantityCount--;
    });
  }

   void incrementQuantity(){
    setState(() {
      quantityCount++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
appBar: AppBar(
  title: const Icon(Icons.card_travel),
),
      body: Column(

        children:[
          Image.asset(widget.shop.productimage),
          Text(widget.shop.productname),
          Expanded(
              child: Row(
                children: [
                  Text(widget.shop.productprice),
                  IconButton(onPressed: incrementQuantity, icon: const Icon(Icons.add),
                  ),
                  SizedBox(
                    width: 40,
                    child: Center(
                      child: Text(quantityCount.toString(),style: const TextStyle(color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      ),),
                    ),
                  ),
                                  IconButton(onPressed: decrementQuantity, icon: const Icon(Icons.remove),
                                  ),
                ],
              ))
        ]
      )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:shoppingapp/models/shop.dart';

class DetailPage extends StatefulWidget {
  final Shop shop;
   DetailPage({super.key, required this.shop});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
appBar: AppBar(
  title: const Icon(Icons.card_travel),
),
      body: Column(

        children:[
          Expanded(child: ListView(
children:[
Image.asset(widget.shop.productname),

]
          ),
          ),
        ]
      )
    );
  }
}
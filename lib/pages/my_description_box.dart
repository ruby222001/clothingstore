import 'package:flutter/material.dart';

class MyDescription extends StatelessWidget {
  const MyDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color:Colors.black,
        ),
borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(left: 25, right: 25, top: 25,bottom: 25),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children:[
              Text('\$444'),
              Text('Delivery fee'),
            ],
          ),
          
          Column(
            children:[
              Text('14 min'),
              Text('Delivery time'),
            ],
          ),
        ],
      )
    );
  }
}
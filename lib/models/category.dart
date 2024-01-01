import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String name;
  final Icon iconpath;

  const Category({super.key, required this.name, required this.iconpath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(12)),
            child: const Icon(Icons.check),
          ),
      
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '50% OFF',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text('on all womens shows')
              ],
            ),
          ),
           
                         const Icon(Icons.arrow_right),
      
        ],
      
      ),
    );
    
  }
}

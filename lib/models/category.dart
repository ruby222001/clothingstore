import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String categoryname;
  final int index;

   Category({super.key, required this.categoryname,
  required this.index,
  });
int isSelected =0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 50,
            width: 70,
            decoration: BoxDecoration(
                color: isSelected == index ? Colors.red : Colors.red.shade300,
                 borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: Text(categoryname)),
                ),
          ),
      
          
           
      
        ],
      
      ),
    );
    
  }
}

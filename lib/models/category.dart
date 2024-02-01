import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String categoryname;

  const Category({super.key, required this.categoryname,
  });

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
                color: Colors.grey,
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

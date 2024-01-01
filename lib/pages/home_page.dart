import 'package:flutter/material.dart';
import 'package:shoppingapp/models/category.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [

Category(
  name: 'All',
  iconpath: Icon(Icons.badge),
  ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body:Column(

children: [
  
  Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text('No more boring things',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 40,
        ),
        ),
      Text(
        'Picking up accessories from popular European brands.',
         style: TextStyle(
        fontSize: 20,
        ),
        ),
    ],
  ),
],      )
    );
  }
}
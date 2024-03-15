import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabcontroller;
  const MyTabBar({super.key,
   required this.tabcontroller,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller:tabcontroller,
      tabs: const [
      Tab(icon: Icon(Icons.home),
      ),
      Tab(icon: Icon(Icons.home),
      ),
       Tab(icon: Icon(Icons.home),
      ),
     
    ]);
  }
}
import 'package:flutter/material.dart';
import 'package:shoppingapp/models/drawer.dart';
import 'package:shoppingapp/models/mytabbar.dart';

import 'package:shoppingapp/models/sliverappbar.dart';
import 'package:shoppingapp/pages/my_description_box.dart';
import 'package:shoppingapp/pages/mycurrent_location.dart';


class HomePage extends StatefulWidget {
   const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

late TabController _tabController;


  @override
  void initState(){
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }
  @override
  void dispose(){
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      drawer: const MyDrawer(),
     
      
      body: NestedScrollView(
        headerSliverBuilder: (context,innerBoxIsScrolled) => [
        MySliverAppBar(
        title: MyTabBar(tabcontroller: _tabController),
child:const Column(
  mainAxisAlignment: MainAxisAlignment.end,
  crossAxisAlignment: CrossAxisAlignment.start,
children: [
Divider(
  indent: 25,
endIndent: 25,
),
MyCurrentLocation(),
MyDescription(),
SizedBox(height: 30),
],
),        
        ),
      ],
      
      body: Container(color: Colors.blue)
      )
        
          );
         
  }
          
        
   
  }

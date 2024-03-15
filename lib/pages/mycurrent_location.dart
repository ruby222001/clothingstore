import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});
  void openLocationSearchBox(BuildContext context){
showDialog(context: context, builder: (context)=> AlertDialog(
  title: const Text("Your Location"),
  content:const TextField(decoration: InputDecoration(
    hintText: "Search cloth type"
  ),
  ) ,
  actions: [
    MaterialButton(onPressed: () => Navigator.pop(context),
    child: const Text('Cancel'),
    ),

     MaterialButton(onPressed: () => Navigator.pop(context),
    child: const Text('Save'),
    ),
  ],
),
);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
      
        children: [
          const Text("Deliver now",
        ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: const Row(
              children: [
                Text("hdfdfbdhbd",
                style: TextStyle(fontWeight: FontWeight.bold,
                ),
                ),
                Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          )
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:shoppingapp/models/drawe_tile.dart';
import 'package:shoppingapp/models/settingspage.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 100.0),
          child: Icon(
            Icons.lock_open_rounded,
            size: 80,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(25.0),
        ),
        MyDrawerTile(
            text: "H O M E",
            icon: Icons.home,
            onTap: () => Navigator.pop(context)),
        MyDrawerTile(
            text: "S E T T I N G S ", icon: Icons.settings, onTap: (){
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => const SettingsPage()
                  ),
              );
            }),
        const Spacer(),
        MyDrawerTile(text: "L O G O U T", icon: Icons.logout, onTap: () {}),
      ],
    ));
  }
}

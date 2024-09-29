import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:food_delivery_app/components/my_drawer_tile.dart';
import 'package:food_delivery_app/pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
    child: Column(
      children: [
        // app logo
        Padding(
          padding: const EdgeInsets.only(right: 25.0, left: 25.0, top: 50),
          child: Icon(Icons.delivery_dining_sharp,size: 100,color: Theme.of(context).colorScheme.inversePrimary,),
        ),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Divider(color: Theme.of(context).colorScheme.inversePrimary,),
        ),
        MyDrawerTile(text: "H O M E", icon: Icons.home, onTap: (){Navigator.pop(context);},),
        MyDrawerTile(text: "P R O F I L E", icon: Icons.person, onTap: (){},),
        MyDrawerTile(text: "S E T T I N G S", icon: Icons.settings, onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingsPage()));},),
        Spacer(),
        MyDrawerTile(text: "L O G O U T", icon: Icons.logout, onTap: (){},),
        SizedBox(height: 30,)


      ],
    ),
      

    );
  }
}

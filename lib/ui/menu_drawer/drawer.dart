import 'package:flutter/material.dart';

class DrawerMenuScreen extends StatefulWidget {
  const DrawerMenuScreen({super.key});

  @override
  State<DrawerMenuScreen> createState() => _DrawerMenuScreenState();
}

class _DrawerMenuScreenState extends State<DrawerMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      // Add your drawer content here
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Add your drawer items here
          ListTile(
            title: Text('Menu Item 1'),
            onTap: () {
              // Handle menu item 1 tap
            },
          ),
          ListTile(
            title: Text('Menu Item 2'),
            onTap: () {
              // Handle menu item 2 tap
            },
          ),
          // Add more ListTile items as needed
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nikeshop/components/drawer_list_tile.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[900],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                  child: Image.asset(
                'lib/images/nike.png',
                color: Colors.white,
              )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Divider(
                  color: Colors.grey[800],
                ),
              ),
              const MyDrawerListTile(
                tileText: 'H O M E',
                tileIcon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
              ),
              const MyDrawerListTile(
                tileText: 'A B O U T',
                tileIcon: Icon(
                  Icons.info,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 25.0),
            child: MyDrawerListTile(
              tileText: 'L O G O U T',
              tileIcon: Icon(
                Icons.logout,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

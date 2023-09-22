import 'package:flutter/material.dart';

class MyDrawerListTile extends StatelessWidget {
  final String tileText;
  final Icon tileIcon;
  const MyDrawerListTile(
      {super.key, required this.tileText, required this.tileIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: ListTile(
        leading: tileIcon,
        title: Text(
          tileText,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

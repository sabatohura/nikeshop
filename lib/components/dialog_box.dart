import 'package:flutter/material.dart';

class MyDialogBox extends StatelessWidget {
  final String dialogTitle;
  final String dialogContent;
  const MyDialogBox(
      {super.key, required this.dialogTitle, required this.dialogContent});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey[400],
      title: Text(dialogTitle),
      content: Text(dialogContent),
    );
  }
}

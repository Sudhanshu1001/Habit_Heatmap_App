import 'package:flutter/material.dart';

class MyAlertBox extends StatelessWidget {
  final controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  const MyAlertBox({
    super.key,
    required this.controller,
    required this.onCancel,
    required this.onSave
    });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey[900],
      content: TextField(
        controller: controller,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),

      actions: [
        MaterialButton(
          onPressed: onSave,
          child:  const Text("Save", style: TextStyle(color: Colors.white)),
          color: Colors.black54,
        ),
        MaterialButton(
          onPressed: onCancel,
          child: const Text("Cancel", style: TextStyle(color: Colors.white)),
          color: Colors.black54,
        ),
      ],
    );
  }
}

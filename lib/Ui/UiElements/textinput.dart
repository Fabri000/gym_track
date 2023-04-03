import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  String hint;
  TextEditingController controller;

  TextInput({required this.hint, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        width: 400,
        child: TextField(
          decoration: InputDecoration(
            hintText: hint,
          ),
          controller: controller,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gym_track/Objects/Enums/app_colors.dart';

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
          controller: controller,
          style: TextStyle(color: AppColors.PRIMARY.color),
          decoration: InputDecoration(
            labelText: hint,
            floatingLabelStyle: TextStyle(
                color: AppColors.PRIMARY.color,
                fontSize: 17,
                fontWeight: FontWeight.bold),
            hoverColor: AppColors.PRIMARY.color,
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.PRIMARY.color),
            ),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.LIGHT.color)),
            labelStyle: TextStyle(
                color: AppColors.LIGHT.color, fontWeight: FontWeight.bold),
          ),
          cursorColor: AppColors.PRIMARY.color,
        ),
      ),
    );
  }
}

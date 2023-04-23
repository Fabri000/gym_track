import 'package:flutter/material.dart';
import 'package:gym_track/Objects/Enums/app_colors.dart';

class SuccessInsertionSnackBarContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Exercise succesfully added",
        style: TextStyle(color: AppColors.SUCCESS_COLOR.color, fontSize: 20),
      ),
    );
  }
}

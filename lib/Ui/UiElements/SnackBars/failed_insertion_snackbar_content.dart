import 'package:flutter/material.dart';
import 'package:gym_track/Objects/Enums/app_colors.dart';

class FailedInsertionSnackBarContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Failed to Insert",
        style: TextStyle(color: AppColors.ERROR_COLOR.color, fontSize: 20),
      ),
    );
  }
}

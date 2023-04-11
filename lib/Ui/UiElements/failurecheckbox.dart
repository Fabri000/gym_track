import 'package:flutter/material.dart';
import 'package:gym_track/Objects/Enums/app_colors.dart';

class FailureCheckBox extends StatefulWidget {
  final _FailureCheckBoxState _state = _FailureCheckBoxState();
  @override
  State<FailureCheckBox> createState() => _state;

  bool isChecked() {
    return _state.isChecked;
  }
}

class _FailureCheckBoxState extends State<FailureCheckBox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 10.0,
      children: [
        Checkbox(
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            }),
        Text(
          "Failure",
          style: TextStyle(
              color: AppColors.LIGHT.color,
              fontSize: 18,
              fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}

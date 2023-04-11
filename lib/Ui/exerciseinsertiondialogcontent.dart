import 'package:flutter/material.dart';
import 'package:gym_track/Objects/Enums/app_colors.dart';
import 'package:gym_track/Ui/UiElements/failurecheckbox.dart';
import 'UiElements/difficultyselector.dart';
import 'UiElements/textinput.dart';

class DialogContent extends StatelessWidget {
  TextEditingController exercisenamecontroller;
  TextEditingController numberofrepscontroller;
  TextEditingController weightcontroller;
  DifficultySelector difficultySelector;
  TextEditingController resttimescontroller;
  FailureCheckBox failureCheckBox;

  DialogContent(
      {super.key,
      required this.exercisenamecontroller,
      required this.numberofrepscontroller,
      required this.weightcontroller,
      required this.difficultySelector,
      required this.resttimescontroller,
      required this.failureCheckBox});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      height: 500,
      child: Column(
        children: [
          TextInput(
              hint: "Name of Exercise", controller: exercisenamecontroller),
          TextInput(
              hint: 'Number of reps done', controller: numberofrepscontroller),
          TextInput(hint: 'Weight (in Kg)', controller: weightcontroller),
          difficultySelector,
          TextInput(
              hint: 'Rest taken after (in seconds)',
              controller: resttimescontroller),
          failureCheckBox
        ],
      ),
    );
  }
}

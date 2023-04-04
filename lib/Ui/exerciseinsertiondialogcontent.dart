import 'package:flutter/material.dart';
import 'UiElements/difficultyselector.dart';
import 'UiElements/textinput.dart';

class DialogContent extends StatelessWidget {
  TextEditingController exercisenamecontroller;
  TextEditingController numberofrepscontroller;
  TextEditingController weightcontroller;
  DifficultySelector difficultySelector;
  TextEditingController resttimescontroller;

  DialogContent(
      {super.key,
      required this.exercisenamecontroller,
      required this.numberofrepscontroller,
      required this.weightcontroller,
      required this.difficultySelector,
      required this.resttimescontroller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      height: 600,
      child: Column(
        children: [
          TextInput(
              hint: 'Name of the exercise', controller: exercisenamecontroller),
          TextInput(
              hint: 'Number of reps done', controller: numberofrepscontroller),
          TextInput(hint: 'Weight (in Kg)', controller: weightcontroller),
          TextInput(
              hint: 'Rest taken after (in seconds)',
              controller: resttimescontroller),
          difficultySelector,
        ],
      ),
    );
  }
}

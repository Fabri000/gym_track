import 'package:flutter/material.dart';
import 'package:gym_track/FileManager/file_manager.dart';
import 'package:gym_track/Objects/exercises.dart';
import 'package:gym_track/Ui/UiElements/difficultyselector.dart';

import 'UiElements/textinput.dart';

class MainPage extends StatelessWidget {
  TextEditingController exercisenamecontroller = TextEditingController();
  TextEditingController numberofrepscontroller = TextEditingController();
  TextEditingController weightcontroller = TextEditingController();
  DifficultySelector difficultySelector = DifficultySelector();
  TextEditingController resttimescontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    OutlinedButton insertbutton = OutlinedButton(
        onPressed: () {
          FileManager.getinstance()?.addExercise(Exercise(
              exercisenamecontroller.text,
              int.parse(numberofrepscontroller.text),
              double.parse(weightcontroller.text),
              int.parse(resttimescontroller.text),
              difficultySelector.getCurrentDifficulty()));
          resetelement();
        },
        child: const Text(
          "Insert",
          style: TextStyle(fontSize: 20),
        ));
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 80,
          ),
          TextInput(
              hint: 'Name of the exercise', controller: exercisenamecontroller),
          TextInput(
              hint: 'Number of reps done', controller: numberofrepscontroller),
          TextInput(hint: 'Weight (in Kg)', controller: weightcontroller),
          TextInput(
              hint: 'Rest taken after (in seconds)',
              controller: resttimescontroller),
          difficultySelector,
          Container(
            height: 50,
          ),
          SizedBox(
            width: 140,
            height: 50,
            child: insertbutton,
          )
        ],
      ),
    );
  }

  void resetelement() {
    exercisenamecontroller.clear();
    weightcontroller.clear();
    numberofrepscontroller.clear();
    resttimescontroller.clear();
    difficultySelector.reset();
  }
}

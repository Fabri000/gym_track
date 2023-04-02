import 'package:flutter/material.dart';
import 'package:gym_track/FileManager/file_manager.dart';
import 'package:gym_track/Objects/exercises.dart';
import 'package:gym_track/Ui/UiElements/difficultyselector.dart';

class MainPage extends StatelessWidget {
  TextEditingController exercisenamecontroller = TextEditingController();
  TextEditingController numberofrepscontroller = TextEditingController();
  TextEditingController weightcontroller = TextEditingController();
  DifficultySelector difficultySelector = DifficultySelector();
  TextEditingController resttimescontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    TextField exercisename = TextField(
      decoration: const InputDecoration(hintText: "Insert exercise name"),
      controller: exercisenamecontroller,
    );
    TextField numberofreps = TextField(
      decoration: const InputDecoration(hintText: "Insert number of reps"),
      controller: numberofrepscontroller,
    );
    TextField weight = TextField(
      decoration: const InputDecoration(hintText: "Insert weight(in kg)"),
      controller: weightcontroller,
    );
    TextField resttime = TextField(
      decoration: const InputDecoration(
          hintText: "Insert rest between set(in seconds)"),
      controller: resttimescontroller,
    );

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
        child: const Text("Insert"));
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 80,
          ),
          SizedBox(
            width: 400,
            child: exercisename,
          ),
          SizedBox(
            width: 400,
            child: numberofreps,
          ),
          SizedBox(
            width: 400,
            child: weight,
          ),
          difficultySelector,
          SizedBox(
            width: 400,
            child: resttime,
          ),
          insertbutton
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

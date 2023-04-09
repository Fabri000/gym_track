import 'package:flutter/material.dart';
import 'package:gym_track/Objects/Enums/app_colors.dart';
import 'package:gym_track/Ui/exerciseinsertiondialogcontent.dart';
import '../FileManager/file_manager.dart';
import '../Objects/exercises.dart';
import 'UiElements/difficultyselector.dart';

class ExerciseInsertionDialog extends StatelessWidget {
  TextEditingController exercisenamecontroller = TextEditingController();
  TextEditingController numberofrepscontroller = TextEditingController();
  TextEditingController weightcontroller = TextEditingController();
  DifficultySelector difficultySelector = DifficultySelector();
  TextEditingController resttimescontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    OutlinedButton insertbutton = OutlinedButton(
        onPressed: () {
          FileManager.instance.addExercise(Exercise(
              exercisenamecontroller.text,
              int.parse(numberofrepscontroller.text),
              double.parse(weightcontroller.text),
              int.parse(resttimescontroller.text),
              difficultySelector.getCurrentDifficulty()));
          Navigator.pop(context);
        },
        style: ButtonStyle(
            fixedSize: MaterialStateProperty.all(const Size(100, 40)),
            backgroundColor: MaterialStatePropertyAll(AppColors.PRIMARY.color)),
        child: Text(
          "Insert",
          style: TextStyle(fontSize: 20, color: AppColors.LIGHT.color),
        ));
    return AlertDialog(
      title: Text("Insert new exercise",
          style: TextStyle(fontSize: 25, color: AppColors.LIGHT.color)),
      content: DialogContent(
          exercisenamecontroller: exercisenamecontroller,
          numberofrepscontroller: numberofrepscontroller,
          weightcontroller: weightcontroller,
          difficultySelector: difficultySelector,
          resttimescontroller: resttimescontroller),
      actions: [insertbutton],
    );
  }
}

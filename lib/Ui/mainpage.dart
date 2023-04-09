import 'dart:io';
import 'package:flutter/material.dart';
import 'package:gym_track/Objects/Enums/app_colors.dart';
import 'package:gym_track/Ui/Body/exercisestable.dart';
import 'package:gym_track/Ui/exerciseinsertiondialog.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ExerciseTable _table;

  @override
  Widget build(BuildContext context) {
    _table = ExerciseTable();
    OutlinedButton addnew = OutlinedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(AppColors.PRIMARY.color)),
        onPressed: () {
          showDialog(
                  context: context,
                  builder: (BuildContext context) => ExerciseInsertionDialog())
              .then((_) {
            setState(() {
              _table = ExerciseTable();
            });
          });
        },
        child: Text("Add new Exercise",
            style: TextStyle(fontSize: 20, color: AppColors.LIGHT.color)));
    OutlinedButton quit = OutlinedButton(
        style: ButtonStyle(
            backgroundColor:
                MaterialStatePropertyAll(AppColors.SECONDARY.color)),
        onPressed: () {
          exit(0);
        },
        child: Text("Quit",
            style: TextStyle(fontSize: 20, color: AppColors.LIGHT.color)));
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(child: _table),
            SizedBox(
              height: 60,
              width: 400,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [addnew, quit],
              ),
            )
          ],
        ),
      ),
    );
  }
}

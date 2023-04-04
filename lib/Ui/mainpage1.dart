import 'dart:io';
import 'package:flutter/material.dart';
import 'package:gym_track/Ui/exerciseinsertiondialog.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    OutlinedButton addnew = OutlinedButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) => ExerciseInsertionDialog());
        },
        child: const Text("Add new Exercise",
            style: TextStyle(fontSize: 20, color: Colors.green)));
    OutlinedButton quit = OutlinedButton(
        onPressed: () {
          exit(0);
        },
        child: const Text("Quit",
            style: TextStyle(fontSize: 20, color: Colors.red)));
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            addnew,
            Container(
              height: 80,
            ),
            quit
          ],
        ),
      ),
    );
  }
}

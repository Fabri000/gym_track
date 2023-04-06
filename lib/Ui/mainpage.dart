import 'dart:io';
import 'package:flutter/material.dart';
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

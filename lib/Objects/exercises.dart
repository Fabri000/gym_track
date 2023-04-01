import 'dart:ffi';
import 'package:gym_track/Objects/Enums/exercises_difficulty.dart';

class Exercise {
  String data;
  String exercisename;
  Int numberrep;
  Double weight;
  Difficulty exercisedifficulty;
  Int resttime;

  Exercise(
      {required this.data,
      required this.exercisename,
      required this.numberrep,
      required this.weight,
      required this.exercisedifficulty,
      required this.resttime});

  String csvformat() {
    return '$data,$exercisename,$numberrep,$weight,$exercisedifficulty,$resttime';
  }
}

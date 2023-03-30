import 'dart:io' as io;

import 'package:gym_track/Objects/exercises.dart';

class FileManager {
  String pathwin = 'C:/Users/Public/GymTrakerData';
  String filename = 'ExerciceHistory.csv';
  String header = 'date,exercise,reps,weight (Kg),difficulty,rest_time(sec)';

  FileManager() {
    if (!io.Directory(pathwin).existsSync()) {
      io.Directory(pathwin).createSync();
      io.File('$pathwin/$filename').createSync();
      io.File('$pathwin/$filename').writeAsStringSync(header);
    } else if (!io.File('$pathwin/$filename').existsSync()) {
      io.File('$pathwin/$filename').createSync();
      io.File('$pathwin/$filename').writeAsStringSync(header);
    }
  }

  void addExercise(Exercise exercise) {
    io.File('$pathwin/$filename').writeAsStringSync(exercise.csvformat());
  }
}

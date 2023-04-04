import 'dart:io' as io;
import 'package:gym_track/Objects/exercises.dart';

class FileManager {
  String filename = 'ExerciceHistory.csv';
  String header = 'date,exercise,reps,weight (Kg),difficulty,rest_time(sec)\n';
  static FileManager _instance = FileManager._();

  FileManager._() {
    String path = _getpath();
    if (!io.Directory(path).existsSync()) {
      io.Directory(path).createSync();
      io.File('$path/$filename').createSync();
      io.File('$path/$filename').writeAsStringSync(header);
    } else if (!io.File('$path/$filename').existsSync()) {
      io.File('$path/$filename').createSync();
      io.File('$path/$filename').writeAsStringSync(header);
    }
  }

  void addExercise(Exercise exercise) {
    String path = _getpath();
    print(path);
    io.File('$path/$filename')
        .writeAsStringSync(exercise.csvformat(), mode: io.FileMode.append);
  }

  String _getpath() {
    if (io.Platform.isWindows) {
      return '${io.Platform.environment['APPDATA']}\\GymTrakerData';
    } else {
      return '${io.Platform.environment['HOME']}/.GymTrakerData';
    }
  }

  static FileManager get instance => _instance;
}

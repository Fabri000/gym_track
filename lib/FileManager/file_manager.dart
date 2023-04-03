import 'dart:io' as io;
import 'package:gym_track/Objects/exercises.dart';

class FileManager {
  static String win_path =
      '${io.Platform.environment['APPDATA']}\GymTrakerData';
  static String lx_path = '${io.Platform.environment['HOME']}/.GymTrakerData';
  String filename = 'ExerciceHistory.csv';
  String header = 'date,exercise,reps,weight (Kg),difficulty,rest_time(sec)\n';
  static FileManager? _instance = null;

  FileManager() {
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
    io.File('$path/$filename')
        .writeAsStringSync(exercise.csvformat(), mode: io.FileMode.append);
  }

  String _getpath() {
    if (io.Platform.isWindows) {
      return win_path;
    } else {
      return lx_path;
    }
  }

//problema qui
  static FileManager? getinstance() {
    _instance ??= FileManager();
    return _instance;
  }
}

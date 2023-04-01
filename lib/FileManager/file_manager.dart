import 'dart:io' as io;
import 'package:gym_track/Objects/exercises.dart';

/*abstract class FileManager {
  String filename = 'ExerciceHistory.csv';
  String header = 'date,exercise,reps,weight (Kg),difficulty,rest_time(sec)';

  void addExercise(Exercise exercise);
}

class WinFileManager extends FileManager {
  String path = 'C:/Users/Public/GymTrakerData';

  WinFileManager() {
    if (!io.Directory(path).existsSync()) {
      io.Directory(path).createSync();
      io.File('$path/$filename').createSync();
      io.File('$path/$filename').writeAsStringSync(header);
    } else if (!io.File('$path/$filename').existsSync()) {
      io.File('$path/$filename').createSync();
      io.File('$path/$filename').writeAsStringSync(header);
    }
  }

  @override
  void addExercise(Exercise exercise) {
    io.File('$path/$filename').writeAsStringSync(exercise.csvformat());
  }
}

class LxFileManager extends FileManager {
  String path = '/home/fabrizio/GymTrakerData';

  LxFileManager() {
    if (!io.Directory(path).existsSync()) {
      io.Directory(path).createSync();
      io.File('$path/$filename').createSync();
      io.File('$path/$filename').writeAsStringSync(header);
    } else if (!io.File('$path/$filename').existsSync()) {
      io.File('$path/$filename').createSync();
      io.File('$path/$filename').writeAsStringSync(header);
    }
  }

  @override
  void addExercise(Exercise exercise) {
    io.File('$path/$filename').writeAsStringSync(exercise.csvformat());
  }
}
*/

class FileManager {
  static String win_path = 'C:/Users/Public/GymTrakerData';
  static String lx_path = '/home/fabrizio/GymTrakerData';
  String filename = 'ExerciceHistory.csv';
  String header = 'date,exercise,reps,weight (Kg),difficulty,rest_time(sec)';
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
    io.File('$path/$filename').writeAsStringSync(exercise.csvformat());
  }

  String _getpath() {
    if (io.Platform.isWindows) {
      return win_path;
    } else {
      return lx_path;
    }
  }

  static FileManager? getinstance() {
    _instance ??= FileManager();
    return _instance;
  }
}

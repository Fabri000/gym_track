import 'dart:convert';
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

  Future<List<String>> readFileLines() async {
    List<String> lines = [];
    try {
      String fileContent =
          await io.File('${_getpath()}\\$filename').readAsString();
      lines = const LineSplitter().convert(fileContent);
    } catch (e) {
      print("Error reading file: $e");
    }
    return lines;
  }

  static FileManager get instance => _instance;
}

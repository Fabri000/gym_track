import 'package:gym_track/Objects/Enums/exercises_difficulty.dart';

class Exercise {
  String? data;
  String exercisename;
  int numberrep;
  double weight;
  Difficulty exercisedifficulty;
  int resttime;

  Exercise(this.exercisename, this.numberrep, this.weight, this.resttime,
      this.exercisedifficulty) {
    DateTime today = DateTime.now();
    data = '${today.day}-${today.month}-${today.year}';
  }

  String csvformat() {
    return '$data,$exercisename,$numberrep,$weight,${exercisedifficulty.toShortString()},$resttime\n';
  }
}

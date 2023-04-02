import 'package:flutter/material.dart';
import 'package:gym_track/Objects/Enums/exercises_difficulty.dart';

class DifficultySelector extends StatefulWidget {
  _DifficultySelectorState? state;

  @override
  State<DifficultySelector> createState() {
    state = _DifficultySelectorState();
    return state!;
  }

  Difficulty getCurrentDifficulty() {
    return state!.getDifficulty();
  }

  void reset() {
    state!.reset();
  }
}

class _DifficultySelectorState extends State<DifficultySelector> {
  Difficulty _currentdifficulty = Difficulty.REALLYEASY;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<Difficulty>(
        value: _currentdifficulty,
        onChanged: (Difficulty? newDifficulty) {
          setState(() {
            _currentdifficulty = newDifficulty!;
          });
        },
        items: Difficulty.values.map((Difficulty difficulty) {
          return DropdownMenuItem<Difficulty>(
              value: difficulty, child: Text(difficulty.toShortString()));
        }).toList());
  }

  Difficulty getDifficulty() {
    return _currentdifficulty;
  }

  void reset() {
    setState(() {
      _currentdifficulty = Difficulty.REALLYEASY;
    });
  }
}

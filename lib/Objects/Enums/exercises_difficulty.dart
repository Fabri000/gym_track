enum Difficulty { REALLYEASY, EASY, NORMAL, DIFFICULT, HARD, REALLYHARD }

extension ParsToShortString on Difficulty {
  String toShortString() {
    return toString().split(".").last;
  }
}

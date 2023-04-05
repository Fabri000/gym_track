enum Difficulty {
  REALLYEASY,
  EASY,
  NORMAL,
  DIFFICULT,
  HARD,
  REALLYHARD;

  static Difficulty stringConversion(String value) {
    switch (value) {
      case "REALLYEASY":
        return Difficulty.REALLYEASY;

      case "EASY":
        return Difficulty.EASY;

      case "NORMAL":
        return Difficulty.NORMAL;

      case "DIFFICULT":
        return Difficulty.DIFFICULT;

      case "HARD":
        return Difficulty.HARD;

      case "REALLYHARD":
        return Difficulty.REALLYHARD;

      default:
        throw Exception("No corresponding value");
    }
  }
}

extension ParsToShortString on Difficulty {
  String toShortString() {
    return toString().split(".").last;
  }
}

extension StringConversion on Difficulty {}

import 'package:flutter/material.dart';

enum AppColors {
  PRIMARY(Color(0xFF7e348b)),
  SECONDARY(Color(0xFF956E9F)),
  DARK(Color(0xFF5C2673)),
  CONTENT_TEXT(Colors.black),
  TEXT_LIGHT(Color(0xFFF2F2F2));

  const AppColors(this.color);
  final Color color;
}

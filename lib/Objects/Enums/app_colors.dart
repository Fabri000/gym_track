import 'package:flutter/material.dart';

enum AppColors {
  PRIMARY(Color(0xFFFA46F4)),
  SECONDARY(Color(0xFFFD8F6D)),
  DARK(Color(0xFF7008D1)),
  CONTENT_TEXT(Colors.black),
  TEXT_LIGHT(Color(0xFFF2F2F2));

  const AppColors(this.color);
  final Color color;
}

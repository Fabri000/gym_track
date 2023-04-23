import 'package:flutter/material.dart';

enum AppColors {
  PRIMARY(Color(0xFF9163F2)),
  SECONDARY(Color(0xFF52498C)),
  DARK(Color(0xFF492359)),
  CONTENT_TEXT(Color(0xFF222426)),
  LIGHT(Color(0xFFE9EFF2)),
  ERROR_COLOR(Color(0xFFEC3C2D)),
  SUCCESS_COLOR(Color(0xFF009D7A)),
  BACKGROUND(Color(0xFF353940));

//2B2D42 alternative background
//353940 background
  const AppColors(this.color);
  final Color color;
}

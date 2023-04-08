import 'package:flutter/material.dart';

enum AppColors {
  PRIMARY(Color(0xFFFA46F4)),
  SECONDARY(Color(0xFFAC84A8)),
  DARK(Color(0xFF241823)),
  CONTENT_TEXT(Colors.black),
  TEXT_LIGHT(Color(0xFFFFF5FF)),
  BACKGROUND(Color(0xFF7C7B9D));

  const AppColors(this.color);
  final Color color;
}

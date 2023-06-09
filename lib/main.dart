import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gym_track/Objects/Enums/app_colors.dart';
import 'package:gym_track/Ui/mainpage.dart';
import 'package:window_size/window_size.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isWindows || Platform.isLinux) {
    setWindowTitle('Gym Tracker');
    setWindowMaxSize(const Size(1920, 1080));
    setWindowMinSize(const Size(1024, 720));
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            scaffoldBackgroundColor: AppColors.BACKGROUND.color,
            dialogBackgroundColor: AppColors.BACKGROUND.color),
        home: HomePage());
  }
}

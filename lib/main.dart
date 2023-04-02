import 'package:flutter/material.dart';
import 'package:gym_track/FileManager/file_manager.dart';
import 'package:gym_track/Ui/mainpage.dart';

void main() {
  runApp(const MyApp());
  FileManager.getinstance();
}

class MyApp extends StatelessWidget {
  const MyApp({key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: MainPage(),
    );
  }
}

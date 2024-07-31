import 'package:flutter/material.dart';
import 'package:myclassprojectpractice/screens/practice25_7_2024/Home.dart';
import 'package:myclassprojectpractice/screens/practice_30_7_2024/grid_view_practice.dart';
import 'package:myclassprojectpractice/screens/practice_30_7_2024/homescreen.dart';
import 'package:myclassprojectpractice/screens/listTilePractice.dart';
import 'package:myclassprojectpractice/screens/login.dart';
import 'package:myclassprojectpractice/screens/practice_24_7_2024/listviewbuilder.dart';
import 'package:myclassprojectpractice/screens/practice_24_7_2024/setes_practice.dart';
import 'package:myclassprojectpractice/screens/practice_26_7_24/buttons.dart';
import 'package:myclassprojectpractice/screens/practice_26_7_24/task.dart';
import 'package:myclassprojectpractice/screens/practice_29_7_2024/widgetsPractice.dart';
import 'package:myclassprojectpractice/screens/practice_31_7_2024/login_screen_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    bool isIamLogin = true;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginScreen1(),
      
    );
  }
}

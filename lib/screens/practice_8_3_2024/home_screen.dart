

import 'package:flutter/material.dart';
import 'package:myclassprojectpractice/main.dart';
import 'package:myclassprojectpractice/screens/practice_31_7_2024/login_screen_ui.dart';
import 'package:myclassprojectpractice/screens/practice_8_3_2024/login_screen1.dart';

class HomeScreen3 extends StatefulWidget {
  const HomeScreen3({super.key});

  @override
  State<HomeScreen3> createState() => _HomeScreen3State();
}

class _HomeScreen3State extends State<HomeScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
        actions: [
          IconButton(onPressed: (){
            prefObj.remove("isLogin");
            print("this is the value of login in action : ${prefObj.getBool("isLogin")}");
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginScreen2()));
          }, icon: Icon(Icons.logout))
        ],
      ),
      body: Center(
        child: Text("Home Screen"),
      ),
    );
  }
}
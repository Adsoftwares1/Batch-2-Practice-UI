import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myclassprojectpractice/screens/practice_30_7_2024/ContactUs.dart';
import 'package:myclassprojectpractice/screens/practice_30_7_2024/my_drawer.dart';
import 'package:myclassprojectpractice/screens/practice_30_7_2024/profile.dart';

class HomeScreen1 extends StatefulWidget {
  const HomeScreen1({super.key});

  @override
  State<HomeScreen1> createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyAppDrawer(),
       appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text(
          "Home",
          style: TextStyle(fontSize: 60),
        ),
      ),
      body: Center(
        child: Text("Home Screen"),
      ),
    
    );
  }
}

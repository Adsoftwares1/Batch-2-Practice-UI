

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myclassprojectpractice/old_work/screens/practice_30_7_2024/my_drawer.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyAppDrawer(),
      appBar: AppBar(
        title: Text("Profile Screen"),
      ),
      body: Center(
        child: Text("Profile Screen"),
      ),
    );;
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Module2Home extends StatefulWidget {
  const Module2Home({super.key});

  @override
  State<Module2Home> createState() => _Module2HomeState();
}

class _Module2HomeState extends State<Module2Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Home Screen"),
      ),
    );
  }
}
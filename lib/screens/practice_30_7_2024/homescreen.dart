

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String myName = "Haris Khan";

  bool isIamHappy = true;

  int hour = 1;
  int mint = 0;
  int sec = 0;

  

  Future<void> myWatchFunction() async {
    
    for(var hours = 1; hours <= 24; hours ++ ){
      hour = hours;
    for (var minutes = 0; minutes <=59 ; minutes ++){
      mint = minutes;
      for(var seconds = 0; seconds <= 59; seconds ++){
        
       await Future.delayed(Duration(microseconds: 1));
        sec = seconds;
        print("Time is:  $hours:$minutes:$seconds");
        setState(() {
          
        });
      }
    }
  }
  }

  @override
  void initState() {
    // TODO: implement initState
    
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("Home Page"),
        backgroundColor: Colors.red,
        actions: [
          Icon(Icons.menu_open),
        ],
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
          height: double.infinity, color: Colors.red,),
          Container(width: 200,
          height: 200, color: Colors.green,),
          Positioned(
            left: 200,
            top: 400,
            child: Container(width: 100,
            height: 100, color: Colors.black,),
          ),
        ],
      ),
      
    );
  }



}
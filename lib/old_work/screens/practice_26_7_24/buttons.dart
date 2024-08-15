


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonsPractice extends StatefulWidget {
  const ButtonsPractice({super.key});

  @override
  State<ButtonsPractice> createState() => _ButtonsPracticeState();
}

class _ButtonsPracticeState extends State<ButtonsPractice> {
  bool showButton = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            showButton == true?  TextButton(onPressed: (){
              showButton = false;
              setState(() {
                
              });
              print("Hello i am pressed");
            }, child: Text("Text Button")) : Container(),
            SizedBox(height: 20,),

            IconButton(onPressed: (){
              print("I am icon button");
            }, icon: Icon(Icons.person)),

            SizedBox(height: 20,),

            ElevatedButton(onPressed: (){}, child: Text("Login")),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myclassprojectpractice/old_work/screens/practice_24_7_2024/setes_practice.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {

  
  @override
  void dispose() {
    // TODO: implement dispose
    print("Hello i am terminated i am , I am Second Screen");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            InkWell(
              onTap: (){
                 Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
                  return StetesPractice();
                }));
              },
              child: Container(
                child: Center(child: Text("Hello i am second screen")),
              ),
            )
          ],
        ),
      ),
    );
  }
}
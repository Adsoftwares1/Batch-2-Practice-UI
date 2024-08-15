


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myclassprojectpractice/old_work/screens/practice_24_7_2024/screen2.dart';
import 'package:myclassprojectpractice/old_work/screens/practice_26_7_24/buttons.dart';

class StetesPractice extends StatefulWidget {
  const StetesPractice({super.key});

  @override
  State<StetesPractice> createState() => _StetesPracticeState();
}

class _StetesPracticeState extends State<StetesPractice> {

  bool isColorChanged = false;

 @override
  void initState() {
    // TODO: implement initState
    print("Hello i am printed in the start of the screen calls");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("Ui Rebuild");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              color: isColorChanged == true? Colors.yellow : Colors.red,
            ),
            SizedBox(height: 20,),
        
            InkWell(
              onTap: (){
                isColorChanged = true;
                print("Value of isColordchanged is changed: $isColorChanged");
                setState(() {
                  
                });

                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return ButtonsPractice();
                }));
              },
              child: Container(
                color: Colors.blue,
                width: 200,
                height: 60,
                child: Center(child: Text("Change Color")),
              ),
            )
          ],
        ),
      ),
    );
  }
}
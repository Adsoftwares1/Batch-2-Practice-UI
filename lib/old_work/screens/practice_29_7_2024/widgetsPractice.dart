//Padding
//Margin
//Align
//Expended
//Flex

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class aboveWidgetsPractice extends StatefulWidget {
  const aboveWidgetsPractice({super.key});

  @override
  State<aboveWidgetsPractice> createState() => _aboveWidgetsPracticeState();
}

class _aboveWidgetsPracticeState extends State<aboveWidgetsPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Container(
          //   width: 100,
          //   height: 100,
          //   color: Colors.red,
          // ),
          // margin practice
          // Container(
          //   margin: EdgeInsets.all(
          //     10.0),
          //     width: 400,
          //     height: 400,
          //     color: Colors.blue,
          //   child: Container(
          //     width: 200,
          //     height: 200,
          //     color: Colors.red,
          //               margin: EdgeInsets.only(
          //     left: 20),
          //     // or use EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0)
          //               child: Text(
          //   'Your text here',
          //   style: TextStyle(fontSize: 16.0),
          //               ),
          //             ),
          // ),

          // align practice
          // Container(
          //   height: 400,
          //   width: 400,
          //   color: Colors.red,
          //   child: Align(
          //     alignment: Alignment.bottomRight,
          //     child: Text("Hello"),
          //     ),
          // ),

          // expanded practice

          // Container(width: 200, height: 50, color: Colors.red,),
          // Expanded(child: Container(width: 200, height: 50, color: Colors.green,)),
          // Container(width: 200, height: 50, color: Colors.black,),

          // flex practice

          Container(
              color: Colors.red,
              height: 100,
              width: 100,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                color: Colors.blueAccent,
                width: 200,
                height: 100,
                child: Center(
                  child: Text(
                    'Aligned Right',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: Colors.green,
                height: 100,
                width: 100,
              ),
            ),
        ],
      ),
    );
  }
}

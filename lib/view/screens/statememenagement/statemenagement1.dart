import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myclassprojectpractice/controllers/statemenagement_contollers/statemenagement_controller.dart';
import 'package:provider/provider.dart';

class StateManagement1 extends StatefulWidget {
  const StateManagement1({super.key});

  @override
  State<StateManagement1> createState() => _StateManagement1State();
}

class _StateManagement1State extends State<StateManagement1> {
  late StatemenagementContoller obj;

  @override
  void initState() {
    obj = Provider.of<StatemenagementContoller>(context, listen: false);
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    print("i am rebuild");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<StatemenagementContoller>(builder: (context, watcher, child){
              return Container(
              
              child: Text("Astaghfar : ${watcher.astaghfar}", style: TextStyle(fontSize: 40),));
            }),
            SizedBox(height: 10,),
            ElevatedButton(
              onPressed: () {
               obj.incrementZikar();
              },
              child: Text("Increment"),
            ),
          ],
        ),
      ),
    );
  }
}

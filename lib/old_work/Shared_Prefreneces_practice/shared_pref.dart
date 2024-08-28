


import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref extends StatefulWidget {
  const SharedPref({super.key});

  @override
  State<SharedPref> createState() => _SharedPrefState();
}

class _SharedPrefState extends State<SharedPref> {
  String? myName;

  late SharedPreferences prefObj;

  void initSharedPrefrencesObject() async {
    prefObj = await SharedPreferences.getInstance();
    myName = prefObj.getString("name");
  }


  @override
  void initState() {
    initSharedPrefrencesObject();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("My Name is : $myName"),
            SizedBox(height: 20,),
            TextButton(onPressed: (){
              
              prefObj.setString("name", "Shahzad");
              myName = prefObj.getString("name");
              setState(() {
                
              });


            }, child: Text("Add Name")),
        
            SizedBox(height: 20,),
            TextButton(onPressed: (){
              prefObj.remove("name");
              myName = prefObj.getString("name");
              setState(() {
                
              });
            }, child: Text("Delete Name")),
          ],
        ),
      ),
    );
  }
}
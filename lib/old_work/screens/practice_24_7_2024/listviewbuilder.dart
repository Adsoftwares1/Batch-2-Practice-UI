
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListviewwBuilderPractice extends StatefulWidget {
  const ListviewwBuilderPractice({super.key});

  @override
  State<ListviewwBuilderPractice> createState() => _ListviewwBuilderPracticeState();
}

class _ListviewwBuilderPracticeState extends State<ListviewwBuilderPractice> {

  String changedText = "Default text";

  Future<void> _onrefresh() async {
    await Future.delayed(Duration(seconds: 2));
    changedText = "Text Changed";
    print("Functoin is called");
  }

  Future<void> alyan() async{
    
    await Future.delayed(Duration(seconds: 3));

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      RefreshIndicator(
        onRefresh: alyan,
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context,index){
         return Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
              height: 20,
              color: Colors.red,
            ),
         );
        }),
      ),
    );
  }
}
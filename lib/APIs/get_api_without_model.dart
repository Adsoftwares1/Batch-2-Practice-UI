
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GetAPIWithoutSharedPreferences extends StatefulWidget {
  const GetAPIWithoutSharedPreferences({super.key});

  @override
  State<GetAPIWithoutSharedPreferences> createState() => _GetAPIWithoutSharedPreferencesState();
}

class _GetAPIWithoutSharedPreferencesState extends State<GetAPIWithoutSharedPreferences> {
  Map<String, dynamic> myApiData = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: () async {
             final response = await http.get(Uri.parse('https://api.restful-api.dev/objects/7'));

    Map<String,dynamic> decodedData = json.decode(response.body);

    myApiData = decodedData;

    if(response.statusCode == 200){
      print("data sucess : ${decodedData}");
      
     }else{
       print("data failed : ${response.statusCode}");
    }

    setState(() {
      
    });
            }, child: Text("Hit Api")),

            Text("data in api : ${myApiData} "),
          ],
        ),
      ),
    );
  }

  
}
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:myclassprojectpractice/APIs/models/laptop_data_model.dart';

class GetAPIWithoutSharedPreferences extends StatefulWidget {
  const GetAPIWithoutSharedPreferences({super.key});

  @override
  State<GetAPIWithoutSharedPreferences> createState() =>
      _GetAPIWithoutSharedPreferencesState();
}

class _GetAPIWithoutSharedPreferencesState
    extends State<GetAPIWithoutSharedPreferences> {
  LaptopDataModel? myApiData = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () async {
                  final response = await http
                      .get(Uri.parse('https://api.restful-api.dev/objects/7'));
                    
                    //print("Name of laptop : ${response.body['name']}");

                  Map<String, dynamic> decodedData = json.decode(response.body);

                  myApiData = LaptopDataModel.fromJson(decodedData);

                  if (response.statusCode == 200) {
                    print("data sucess : ${decodedData}");
                  } else {
                    print("data failed : ${response.statusCode}");
                  }

                  setState(() {});
                },
                child: Text("Hit Api")),
           myApiData != null ? Text("My laptop name is : ${myApiData!.name}") : Container(),
           myApiData != null ? Text("My laptop id is : ${myApiData!.id}"): Container(),
           myApiData != null ? Text("My laptop year  is : ${myApiData!.myData.year}"): Container(),
           myApiData != null ? Text("My laptop price  is : ${myApiData!.myData.price}"): Container(),
            
          ],
        ),
      ),
    );
  }
}

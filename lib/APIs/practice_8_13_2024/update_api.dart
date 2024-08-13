

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UpdateApi extends StatefulWidget {
  const UpdateApi({super.key});

  @override
  State<UpdateApi> createState() => _UpdateApiState();
}

class _UpdateApiState extends State<UpdateApi> {
  
  TextEditingController nameController = TextEditingController();
  TextEditingController jobController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: 220,
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Colors.red,
                    ),
                    hintText: "Enter name",
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
        
              Container(
                width: 220,
                child: TextField(
                  controller: jobController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Colors.red,
                    ),
                    hintText: "Enter job",
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () async {
                    print(
                        "Email is: ${nameController.text} and password is: ${jobController.text}");
                    final response = await http.put(
                      headers: {
                        'Content-Type' : 'application/json'
                      },
                      Uri.parse("https://reqres.in/api/users/2"),
                      body: jsonEncode({
                        "name": nameController.text,
                        "job": jobController.text,
                      }),
                    );
        
                    if (response.statusCode == 200) {
                      Map<String, dynamic> apiData = jsonDecode(response.body);
                      print("Login sucess : $apiData");
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Update sucess")));
                     
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("update Failed ")));
                      print("Invlaid credentials : ${response.statusCode}");
                    }
        
                    // navigate to home screen
                  },
                  child: Text("update"))
          ],
        ),
      ),
    );
  }
}
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:myclassprojectpractice/view/screens/module2/module2_home.dart';

class AuthenticationController {
  Future<void> signIn(
      String email, String password, BuildContext context) async {
    final response = await http.post(
      headers: {'Content-Type': 'application/json'},
      Uri.parse("https://reqres.in/api/login"),
      body: jsonEncode({
        "email": email,
        "password": password,
      }),
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> apiData = jsonDecode(response.body);
      print("Login sucess : $apiData");
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Login sucess")));
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return Module2Home();
      }));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Login Failed Invalid Credentials")));
      print("Invlaid credentials : ${response.statusCode}");
    }
  }
}

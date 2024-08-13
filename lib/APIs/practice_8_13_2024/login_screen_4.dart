import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:myclassprojectpractice/APIs/practice_8_13_2024/my_home_screen_2.dart';

class LoginScreen4 extends StatefulWidget {
  const LoginScreen4({super.key});

  @override
  State<LoginScreen4> createState() => _LoginScreen4State();
}

class _LoginScreen4State extends State<LoginScreen4> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordContoller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // title
            Container(
              child: Text(
                "Login",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            // username textfield
            Container(
              width: 220,
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: Colors.red,
                  ),
                  hintText: "Enter email",
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // password
            Container(
              width: 220,
              child: TextField(
                controller: passwordContoller,
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.red,
                  ),
                  suffixIcon: Icon(Icons.visibility),
                  hintText: "Password",
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // login button
            ElevatedButton(
                onPressed: () async {
                  print(
                      "Email is: ${emailController.text} and password is: ${passwordContoller.text}");
                  final response = await http.post(
                    headers: {
                      'Content-Type' : 'application/json'
                    },
                    Uri.parse("https://reqres.in/api/login"),
                    body: jsonEncode({
                      "email": emailController.text,
                      "password": passwordContoller.text,
                    }),
                  );

                  if (response.statusCode == 200) {
                    Map<String, dynamic> apiData = jsonDecode(response.body);
                    print("Login sucess : $apiData");
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login sucess")));
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
                      return MyHomeScreen2();
                    }));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login Failed Invalid Credentials")));
                    print("Invlaid credentials : ${response.statusCode}");
                  }

                  // navigate to home screen
                },
                child: Text("Login"))
          ],
        ),
      ),
    );
  }
}

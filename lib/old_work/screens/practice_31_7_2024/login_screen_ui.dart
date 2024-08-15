

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen1 extends StatefulWidget {
  const LoginScreen1({super.key});

  @override
  State<LoginScreen1> createState() => _LoginScreen1State();
}

class _LoginScreen1State extends State<LoginScreen1> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordContoller= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // title
            Container(
              child: Text("Login", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            ),
            // username textfield
            Container(
              width: 220,
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined, color: Colors.red,),
                  hintText: "Enter email",
                ),
              ),
            ),
            SizedBox(height: 20,),
            // password
            Container(
              width: 220,
              child: TextField(
                controller: passwordContoller,
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock, color: Colors.red,),
                  suffixIcon: Icon(Icons.visibility),
                  hintText: "Password",
                ),
              ),
            ),
            SizedBox(height: 20,),
            // login button
            ElevatedButton(onPressed: (){
              print("Email is: ${emailController.text} and password is: ${passwordContoller.text}");
            }, child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
 
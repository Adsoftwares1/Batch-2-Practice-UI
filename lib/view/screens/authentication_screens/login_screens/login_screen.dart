
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myclassprojectpractice/constants/my_app_colors.dart';
import 'package:myclassprojectpractice/controllers/authentication_controller/authentication_controller.dart';

class LoginScreenRasool extends StatefulWidget {
  const LoginScreenRasool({super.key});

  @override
  State<LoginScreenRasool> createState() => _LoginScreenRasoolState();
}

class _LoginScreenRasoolState extends State<LoginScreenRasool> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  bool isDataLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Login"),
            SizedBox(height: 20,),
            Container(
              width: 200,
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "john@gmail.com",
                  
                ),
              ),
            ),
        
            SizedBox(height: 20,),
            Container(
              width: 200,
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: "***********",
                  
                ),
              ),
            ),
        
            SizedBox(height: 20,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: buttonColor,
              ),
              onPressed: ()async{
                
                  setState(() {
                    isDataLoading = true;
                  });

                  await Future.delayed(Duration(seconds: 5));
               
                AuthenticationController obj = AuthenticationController();
               await  obj.signIn(emailController.text, passwordController.text, context);
                setState(() {
                  isDataLoading = false;
                });
            }, child: isDataLoading == true ? CircularProgressIndicator() : Text("Login"),),
          ],
        ),
      ),
    );
  }
}
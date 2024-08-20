


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myclassprojectpractice/constants/my_app_colors.dart';
import 'package:myclassprojectpractice/controllers/authentication_controller/authentication_controller.dart';
import 'package:myclassprojectpractice/controllers/authentication_updated_with_provider/authentication_controller_with_provider.dart';
import 'package:provider/provider.dart';

class LoginScreenWithProvider extends StatefulWidget {
  const LoginScreenWithProvider({super.key});

  @override
  State<LoginScreenWithProvider> createState() => _LoginScreenWithProviderState();
}

class _LoginScreenWithProviderState extends State<LoginScreenWithProvider> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

   late AuthenticatioController controller;



  @override
  void initState() {
    controller =  Provider.of<AuthenticatioController>(context, listen: false);
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
            Consumer<AuthenticatioController>(builder: (context, watcher, child){
              return ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: buttonColor,
              ),
              onPressed: ()async{
                controller.signIn(emailController.text, passwordController.text, context);
            }, child: controller.isDataLoading ? CircularProgressIndicator() :  Text("Login"),);
            })
          ],
        ),
      ),
    );
  }
}
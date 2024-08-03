
import 'package:flutter/material.dart';
import 'package:myclassprojectpractice/screens/practice_8_3_2024/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen2 extends StatefulWidget {
  const LoginScreen2({super.key});

  @override
  State<LoginScreen2> createState() => _LoginScreen2State();
}

class _LoginScreen2State extends State<LoginScreen2> {
  
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordContoller= TextEditingController();
  late SharedPreferences prefObj;

  void initialseSharedPrefrencesOject() async {
    prefObj = await SharedPreferences.getInstance();
  }

  @override
  void initState() {
    initialseSharedPrefrencesOject();
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
              if(emailController.text == "admin@gmail.com" && passwordContoller.text == "123"){
                prefObj.setBool("isLogin", true);

                print("Is I am login on the login button : ${prefObj.getBool("isLogin")}");
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen3()));
              }
            }, child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
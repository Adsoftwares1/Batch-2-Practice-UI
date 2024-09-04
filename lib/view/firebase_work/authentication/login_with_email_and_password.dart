import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthenticationLogin extends StatefulWidget {
  const AuthenticationLogin({super.key});

  @override
  State<AuthenticationLogin> createState() => _AuthenticationLoginState();
}

class _AuthenticationLoginState extends State<AuthenticationLogin> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Enter your email",
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 200,
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: "Enter your password",
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () async {
                setState(() {
                  isloading = true;
                });

                try {
                  // Attempt to sign in the user with the provided email and password
                  UserCredential userCredential =
                      await FirebaseAuth.instance.signInWithEmailAndPassword(
                    email: emailController.text,
                    password: passwordController.text,
                  );

                  // If sign-in succeeds
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Signup Success")),
                  );
                } on FirebaseAuthException catch (e) {
                  // Handle specific FirebaseAuthExceptions
                  if (e.code == 'user-not-found') {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("User not found: ${e.code}")),
                    );
                  } else if (e.code == 'wrong-password') {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Wrong password: ${e.code}")),
                    );
                  } else if (e.code == 'invalid-credential') {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Invalide Credentials: ${e.code}")),
                    );
                  }
  
                   else {
                    print("${e.code}");
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content: Text("Authentication error: ${e.code}")),
                    );
                  }
                  setState(() {
                    isloading = false;
                  });
                  return;
                } catch (e) {
                  // Handle any other exceptions
                  print("Error in catch: $e");
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Something went wrong")),
                  );
                  setState(() {
                    isloading = false;
                  });
                  return;
                }

                // If no errors occurred, update isloading state
                setState(() {
                  isloading = false;
                });
              },
              child: isloading ? CircularProgressIndicator() : Text("Login"),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () async {
                try{
                  var credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailController.text, password: passwordController.text);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Sign up Sucess")),
                  );
                }catch(shezad){
                  print("Errors : $shezad");
                   ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Sign up failed")),
                  );
                }
                },
                child: Text("SignUp")),
          ],
        ),
      ),
    );
  }
}

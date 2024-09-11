import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignInWithGooglee extends StatefulWidget {
  const SignInWithGooglee({super.key});

  @override
  State<SignInWithGooglee> createState() => _SignInWithGoogleeState();
}

class _SignInWithGoogleeState extends State<SignInWithGooglee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () async {
                  // Assuming you have already set up Firebase and Google Sign-In
                  final GoogleSignIn googleSignIn = GoogleSignIn();

                  try {
                    final GoogleSignInAccount? googleUser =
                        await googleSignIn.signIn();
                    if (googleUser != null) {
                      final GoogleSignInAuthentication googleAuth =
                          await googleUser.authentication;

                      print(
                          "googleUser: sign in success : ${googleUser.displayName}");
                      print(
                          "googleUser: sign in success : ${googleUser.email}");
                      print(
                          "googleUser: sign in success : ${googleUser.photoUrl}");

                      // Use googleAuth.idToken and googleAuth.accessToken to sign in with Firebase
                      final OAuthCredential credential =
                          GoogleAuthProvider.credential(
                        idToken: googleAuth.idToken,
                        accessToken: googleAuth.accessToken,
                      );

                      // Sign in to Firebase with the generated credential
                      UserCredential userCredential = await FirebaseAuth
                          .instance
                          .signInWithCredential(credential);

                      // Check if sign-in is successful
                      if (userCredential.user != null) {
                        print(
                            "Firebase sign-in success: ${userCredential.user?.displayName}");
                      }
                    }
                  } catch (error) {
                    print("Sign in failed: $error");
                  }
                },
                child: Text("Sign in with goole")),
          ],
        ),
      ),
    );
  }
}

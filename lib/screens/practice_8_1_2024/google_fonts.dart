import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoogleFontPractice extends StatefulWidget {
  const GoogleFontPractice({super.key});

  @override
  State<GoogleFontPractice> createState() => _GoogleFontPracticeState();
}

class _GoogleFontPracticeState extends State<GoogleFontPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Hello i am Adil",
          style: GoogleFonts.chicle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

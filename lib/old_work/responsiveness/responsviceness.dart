

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Responsiveness extends StatefulWidget {
  const Responsiveness({super.key});

  @override
  State<Responsiveness> createState() => _ResponsivenessState();
}

class _ResponsivenessState extends State<Responsiveness> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              
              width: MediaQuery.of(context).size.width * 0.02,
              height: MediaQuery.of(context).size.height * 0.02,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle
              ),
            
            ),
            
          ],
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';

class InsanData extends StatefulWidget {
  String insanDataPassed;
   InsanData({super.key, required this.insanDataPassed});

  @override
  State<InsanData> createState() => _InsanDataState();
}

class _InsanDataState extends State<InsanData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.insanDataPassed),
      ),
    );
  }
}
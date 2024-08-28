


import 'package:flutter/material.dart';
import "package:http/http.dart" as http;

class DeleteApiScreen extends StatefulWidget {
  const DeleteApiScreen({super.key});

  @override
  State<DeleteApiScreen> createState() => _DeleteApiScreenState();
}

class _DeleteApiScreenState extends State<DeleteApiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: ()async{
              var response = await http.delete(Uri.parse("https://reqres.in/api/users/2"));
              if(response.statusCode == 204 ){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Delete Sucess")));
              }else{
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Delete fail")));
              }
            }, child: Text("Delete Record")),
          ],
        ),
      ),
    );
  }
}


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class ListTilePractice extends StatefulWidget {
  const ListTilePractice({super.key});

  @override
  State<ListTilePractice> createState() => _ListTilePracticeState();
}

class _ListTilePracticeState extends State<ListTilePractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  
        title: Text("Whatsapp"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: 
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/image.jpg')  ,
            )
            ,
            title: Text("Shehzad Khan"),
            subtitle: Text("hello i am in office"),
            trailing: Text("02:89 AM"),

          ),
          ListTile(
            leading: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
                
              ),
              child: Image.network('https://t3.ftcdn.net/jpg/02/99/04/20/360_F_299042079_vGBD7wIlSeNl7vOevWHiL93G4koMM967.jpg'),
            ),
            title: Text("Shehzad Khan"),
            subtitle: Text("hello i am in office"),
            trailing: Text("02:89 AM"),

          ),
          ListTile(
            leading: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
            ),
            title: Text("Shehzad Khan"),
            subtitle: Text("hello i am in office"),
            trailing: Text("02:89 AM"),

          ),
          ListTile(
            leading: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
            ),
            title: Text("Shehzad Khan"),
            subtitle: Text("hello i am in office"),
            trailing: Text("02:89 AM"),

          ),
          ListTile(
            leading: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
            ),
            title: Text("Shehzad Khan"),
            subtitle: Text("hello i am in office"),
            trailing: Text("02:89 AM"),

          ),
          ListTile(
            leading: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
            ),
            title: Text("Shehzad Khan"),
            subtitle: Text("hello i am in office"),
            trailing: Text("02:89 AM"),

          ),
          ListTile(
            leading: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
            ),
            title: Text("Shehzad Khan"),
            subtitle: Text("hello i am in office"),
            trailing: Text("02:89 AM"),

          ),
          ListTile(
            leading: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
            ),
            title: Text("Shehzad Khan"),
            subtitle: Text("hello i am in office"),
            trailing: Text("02:89 AM"),

          ),
          ListTile(
            leading: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
            ),
            title: Text("Shehzad Khan"),
            subtitle: Text("hello i am in office"),
            trailing: Text("02:89 AM"),

          ),
          ListTile(
            leading: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
            ),
            title: Text("Shehzad Khan"),
            subtitle: Text("hello i am in office"),
            trailing: Text("02:89 AM"),

          ),
          ListTile(
            leading: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
            ),
            title: Text("Shehzad Khan"),
            subtitle: Text("hello i am in office"),
            trailing: Text("02:89 AM"),

          ),
        ],
      ),
    );
  }
}
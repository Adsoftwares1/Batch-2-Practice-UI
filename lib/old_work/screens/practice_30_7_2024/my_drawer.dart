


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myclassprojectpractice/old_work/screens/practice25_7_2024/Home.dart';
import 'package:myclassprojectpractice/old_work/screens/practice_30_7_2024/ContactUs.dart';
import 'package:myclassprojectpractice/old_work/screens/practice_30_7_2024/profile.dart';

class MyAppDrawer extends StatefulWidget {
  const MyAppDrawer({super.key});

  @override
  State<MyAppDrawer> createState() => _MyAppDrawerState();
}

class _MyAppDrawerState extends State<MyAppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:  ListView(
        children: [
          ListTile(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return HomeScreen1();
              }));
            },
            leading: Icon(Icons.home),
            title: Text("Home Screen"),
          ),
          ListTile(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return ProfileScreen();
              }));
            },
            leading: Icon(Icons.person),
            title: Text("Profile Screen"),
          ),
          ListTile(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return ContactUsScreen();
              }));
            },
            leading: Icon(Icons.contact_emergency),
            title: Text("Contact Screen"),
          ),
        ],
      ),
     
    );
  }
}
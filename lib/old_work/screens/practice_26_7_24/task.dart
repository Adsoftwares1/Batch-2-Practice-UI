
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  const Task({super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2016/11/21/12/42/beard-1845166_640.jpg'),
        ),
        title: Text('Home screen'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              // Handle logout
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 100.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(20, (index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2016/11/21/12/42/beard-1845166_640.jpg'),
                  ),
                );
              }),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2016/11/21/12/42/beard-1845166_640.jpg'),
                  ),
                  title: Text('User $index'),
                  subtitle: Text('Message from user $index'),
                  trailing: Text('12:00 PM'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:myclassprojectpractice/old_work/APIs/practice_8_12_2024/model/all_users_model.dart';

class UiAfterHittingApi extends StatefulWidget {
  const UiAfterHittingApi({super.key});

  @override
  State<UiAfterHittingApi> createState() => _UiAfterHittingApiState();
}

class _UiAfterHittingApiState extends State<UiAfterHittingApi> {
  List<UsersModell>? allusers = null;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: allusers != null ? Colors.white : Colors.red,
      appBar: AppBar(
        title: TextButton(
            onPressed: () async {
              isLoading = true;
              setState(() {});
              final response = await http
                  .get(Uri.parse("https://reqres.in/api/users?page=2"));
              if (response.statusCode == 200) {
                // print(
                //     "my api status code is ${response.statusCode}  and my response is : ${response.body}");
                Map<String, dynamic> bodyData = jsonDecode(response.body);
                allusers = (bodyData['data'] as List)
                    .map((user) => UsersModell.fromJson(user))
                    .toList();
                print("length of my list is : ${allusers!.length} ");
              } else {
                print("Error Status code is : ${response.statusCode}");
              }

              isLoading = false;
              setState(() {});
            },
            child: Text("Hit Api")),
      ),
      body: isLoading == true
          ? Center(
              child: CircularProgressIndicator(),
            )
          : allusers != null ? ListView.builder(
              itemCount: allusers!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(allusers![index].image_url),
                  ),
                  title: Text(allusers![index].first_name),
                  subtitle: Text(allusers![index].last_name),
                  trailing: Text(allusers![index].email),
                );
              }) : Text("No Data found"),
    );
  }
}

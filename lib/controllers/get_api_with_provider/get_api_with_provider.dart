import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:myclassprojectpractice/models/get_api_with_provider_models/get_api_with_provider_model.dart';

class GetApiWithProviderController extends ChangeNotifier {
  List<UsersModelForGetApiWithProvider> allusersData = [];

  Future<void> getAllUsersData() async {
    final response =
        await http.get(Uri.parse("https://reqres.in/api/users?page=2"));
    if (response.statusCode == 200) {
      // print(
      //     "my api status code is ${response.statusCode}  and my response is : ${response.body}");
      Map<String, dynamic> bodyData = jsonDecode(response.body);
      allusersData = (bodyData['data'] as List)
          .map((user) => UsersModelForGetApiWithProvider.fromJson(user))
          .toList();
      print("length of my list is : ${allusersData.length} ");
    } else {
      print("Error Status code is : ${response.statusCode}");
    }
    notifyListeners();
  }
}

import 'package:flutter/material.dart';

class UsersModell {
//variables
  int id;
  String email;
  String first_name;
  String last_name;
  String image_url;

// constructer

  UsersModell({
    required this.id,
    required this.email,
    required this.first_name,
    required this.last_name,
    required this.image_url,
  });

// from json function

  factory UsersModell.fromJson(Map<String, dynamic> json) {
    return UsersModell(
        id: json['id'],
        first_name: json['first_name'],
        last_name: json['last_name'],
        image_url: json['avatar'],
        email: json['email']);
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FirebaseCrudeController extends ChangeNotifier {
  bool _isLoading = false;

  // getter function
  bool get isLoading => _isLoading;
  // setter function
  set SetLoading(value) {
    _isLoading = value;
    notifyListeners();
  }

  Future<void> storeDataInFirestore(Map<String, dynamic> myData, BuildContext context) async {
    SetLoading = true;

    try {
      var fireStoreObject = await FirebaseFirestore.instance;

      fireStoreObject.collection("users").add(myData);

      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Sucess")));
          SetLoading = false;
    } catch (e) {
      SetLoading = false;
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Error: $e")));
    }

    
  }
}

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


bool _isLoadingUpdate = false;
  // getter function
  bool get isLoadingUpdate => _isLoadingUpdate;
  // setter function
  set SetLoadingUpdate(value) {
    _isLoadingUpdate = value;
    notifyListeners();
  }

  Future<void> storeDataInFirestore(
      Map<String, dynamic> myData, BuildContext context) async {
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

  Future<void> updateDataInFirestore(Map<String, dynamic> data, BuildContext context) async {
    var firestoreObject = FirebaseFirestore.instance;
SetLoadingUpdate = true;
    try {
      await firestoreObject
          .collection("users")
          .doc("DTvQ2GZx6pPdAqWAKF9W")
          .update(data);
          ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Update Sucess")));
    } catch (e) {
      SetLoadingUpdate = false;
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Error: $e")));
    }
    SetLoadingUpdate = false;
  }

  
}

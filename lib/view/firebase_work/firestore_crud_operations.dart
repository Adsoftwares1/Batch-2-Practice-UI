import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:myclassprojectpractice/controllers/firebase_work_controller/firebase_crude_controller.dart';
import 'package:myclassprojectpractice/view/firebase_work/insan_data.dart';
import 'package:provider/provider.dart';

class FireStoreCrudOperation extends StatefulWidget {
  const FireStoreCrudOperation({super.key});

  @override
  State<FireStoreCrudOperation> createState() => _FireStoreCrudOperationState();
}

class _FireStoreCrudOperationState extends State<FireStoreCrudOperation> {
  var nameController = TextEditingController();
  var AgeController = TextEditingController();

  late FirebaseCrudeController myCrudController;
  String dataOfSingleUSer = "";

  @override
  void initState() {
    // TODO: implement initState
    myCrudController =
        Provider.of<FirebaseCrudeController>(context, listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("data fetched : $dataOfSingleUSer"),
            Container(
              width: 200,
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: "Enter your name",
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 200,
              child: TextField(
                controller: AgeController,
                decoration: InputDecoration(
                  hintText: "Enter your age",
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Consumer<FirebaseCrudeController>(
                    builder: (context, watcher, child) {
                  return TextButton(
                      onPressed: () {
                        Map<String, dynamic> dataToStore = {
                          "name": nameController.text,
                          "age": int.parse(AgeController.text),
                        };
                        myCrudController.storeDataInFirestore(
                            dataToStore, context);
                      },
                      child: myCrudController.isLoading
                          ? CircularProgressIndicator()
                          : Text("Save"));
                }),
                SizedBox(
                  height: 20,
                ),
                Consumer<FirebaseCrudeController>(
                    builder: (context, watcher, child) {
                  return TextButton(
                    onPressed: () async {
                      Map<String, dynamic> userData = {
                        "name": nameController.text,
                        "age": AgeController.text,
                      };
                      await myCrudController.updateDataInFirestore(
                          userData, context);
                    },
                    child: myCrudController.isLoadingUpdate
                        ? CircularProgressIndicator()
                        : Text("Update"),
                  );
                }),
                SizedBox(
                  height: 40,
                ),
                TextButton(
                  onPressed: () async {
                    await FirebaseFirestore.instance
                        .collection("users")
                        .doc("DTvQ2GZx6pPdAqWAKF9W")
                        .delete();

                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text("Delete Sucess")));
                  },
                  child: Text("Delete"),
                ),
                TextButton(
                  onPressed: () async {
                    DocumentSnapshot<Map<String, dynamic>> dataFetched =
                        await FirebaseFirestore.instance
                            .collection("users")
                            .doc("CCs7Nd96Kkzanc866qfw")
                            .get();

                    Map<String, dynamic>? myData = dataFetched.data();

                    dataOfSingleUSer = myData.toString();

                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> InsanData(insanDataPassed: dataOfSingleUSer)));

                    // print("Data get: " + myData.toString());

                    setState(() {});
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Delete Success")));
                  },
                  child: Text("Get Data"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

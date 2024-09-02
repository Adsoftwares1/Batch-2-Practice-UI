import 'package:flutter/material.dart';
import 'package:myclassprojectpractice/controllers/firebase_work_controller/firebase_crude_controller.dart';
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
            Consumer<FirebaseCrudeController>(builder: (context, watcher, child) {
              return TextButton(
                  onPressed: () {
                    Map<String, dynamic> dataToStore = {
                      "name": nameController.text,
                      "age": int.parse(AgeController.text),
                    };
                    myCrudController.storeDataInFirestore(dataToStore, context);
                  },
                  child: myCrudController.isLoading
                      ? CircularProgressIndicator()
                      : Text("Save"));
            }),
          ],
        ),
      ),
    );
  }
}

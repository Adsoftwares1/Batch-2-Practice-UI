import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Store_Image_Firebase_Storage extends StatefulWidget {
  const Store_Image_Firebase_Storage({super.key});

  @override
  State<Store_Image_Firebase_Storage> createState() =>
      _Store_Image_Firebase_StorageState();
}

class _Store_Image_Firebase_StorageState
    extends State<Store_Image_Firebase_Storage> {
  File? myImage;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (myImage != null) ...[
              CircleAvatar(
                radius: 50, // You can adjust the size as needed
                backgroundImage: FileImage(myImage!),
              ),
            ] else ...[
              CircleAvatar(
                radius: 50, // You can adjust the size as needed
                backgroundImage: AssetImage("assets/images/flowers.png"),
              ),
            ],
            SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () async {
                  final ImagePicker picker = ImagePicker();
                  // Pick an image.
                  final XFile? image =
                      await picker.pickImage(source: ImageSource.gallery);

                  if (image != null) {
                    myImage = File(image.path);
                    setState(() {});
                  }
                },
                child: Text("Pick Image")),
            SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () async {
                  setState(() {
                    isLoading = true;
                  });
                  String myImageFileName = "abc";

                  Reference storageRef = FirebaseStorage.instance
                      .ref()
                      .child('users/$myImageFileName');

                  // Upload the file
                  UploadTask uploadTask = storageRef.putFile(myImage!);

                  // Wait for the upload to complete
                  TaskSnapshot storedImageInformation = await uploadTask;

                  // Get the download URL for the uploaded image
                  String downloadUrl =
                      await storedImageInformation.ref.getDownloadURL();

                  print("url of my image : $downloadUrl");

                  setState(() {
                    isLoading = false;
                  });
                },
                child: isLoading
                    ? CircularProgressIndicator()
                    : Text("Upload Image")),
            TextButton(
                onPressed: () async {
                  // Create a reference to the old image in Firebase Storage
                  Reference oldImageRef =
                      FirebaseStorage.instance.refFromURL("https://firebasestorage.googleapis.com/v0/b/batch2-project.appspot.com/o/users%2Fabc?alt=media&token=3b67f05d-b5d2-4313-8a69-0b86261d805c");

                  // Delete the old image
                  await oldImageRef.delete();
                },
                child: Text("Delete Image")),
          ],
        ),
      ),
    );
  }
}

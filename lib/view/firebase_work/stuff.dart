

// Future<User?> signInWithEmailPassword(String email, String password) async {
//   try {
//     // Attempt to sign in the user with the provided email and password
//     UserCredential userCredential = await FirebaseAuth.instance
//         .signInWithEmailAndPassword(email: email, password: password);

//     // Return the signed-in user
//     return userCredential.user;
//   } on FirebaseAuthException catch (e) {
//     // Handle specific FirebaseAuthExceptions
//     if (e.code == 'user-not-found') {
//       print('No user found for that email.');
//     } else if (e.code == 'wrong-password') {
//       print('Wrong password provided for that user.');
//     }
//     return null;
//   } catch (e) {
//     // Handle any other exceptions
//     print('Error: $e');
//     return null;
//   }
// }


// void signInUser() async {
//   String email = 'user@example.com';
//   String password = 'yourpassword';
  
//   User? user = await signInWithEmailPassword(email, password);

//   if (user != null) {
//     print('Successfully signed in: ${user.email}');
//     // Navigate to your app's home screen or handle successful sign-in
//   } else {
//     print('Sign-in failed');
//     // Show an error message or handle the sign-in failure
//   }
// }


// Future<String?> uploadImageToUserFolder(File imageFile) async {
//   try {
//     // Get the current user's UID
//     User? user = FirebaseAuth.instance.currentUser;
//     if (user == null) {
//       throw FirebaseAuthException(
//           code: 'no-user', message: 'No user is currently signed in.');
//     }

//     // Create a reference to the Firebase Storage location
//     String fileName = basename(imageFile.path);
//     Reference storageRef = FirebaseStorage.instance
//         .ref()
//         .child('users/${user.uid}/$fileName');

//     // Upload the file
//     UploadTask uploadTask = storageRef.putFile(imageFile);

//     // Wait for the upload to complete
//     TaskSnapshot snapshot = await uploadTask;

//     // Get the download URL for the uploaded image
//     String downloadUrl = await snapshot.ref.getDownloadURL();

//     return downloadUrl;
//   } on FirebaseAuthException catch (e) {
//     print('FirebaseAuthException: ${e.message}');
//     return null;
//   } on FirebaseException catch (e) {
//     print('FirebaseException: ${e.message}');
//     return null;
//   } catch (e) {
//     print('Error: $e');
//     return null;
//   }
// }


// void uploadUserImage(File imageFile) async {
//   String? imageUrl = await uploadImageToUserFolder(imageFile);

//   if (imageUrl != null) {
//     print('Image uploaded successfully. Download URL: $imageUrl');
//     // Save the image URL in the user's profile or perform other actions
//   } else {
//     print('Image upload failed.');
//     // Handle the upload failure (e.g., show an error message)
//   }
// }



// Future<String?> updateImageInUserFolder(File newImageFile, String oldImageUrl) async {
//   try {
//     // Get the current user's UID
//     User? user = FirebaseAuth.instance.currentUser;
//     if (user == null) {
//       throw FirebaseAuthException(
//           code: 'no-user', message: 'No user is currently signed in.');
//     }

//     // Create a reference to the old image in Firebase Storage
//     Reference oldImageRef = FirebaseStorage.instance.refFromURL(oldImageUrl);

//     // Delete the old image
//     await oldImageRef.delete();

//     // Create a reference to the new image in Firebase Storage
//     String fileName = basename(newImageFile.path);
//     Reference newImageRef = FirebaseStorage.instance
//         .ref()
//         .child('users/${user.uid}/$fileName');

//     // Upload the new image
//     UploadTask uploadTask = newImageRef.putFile(newImageFile);

//     // Wait for the upload to complete
//     TaskSnapshot snapshot = await uploadTask;

//     // Get the download URL for the new image
//     String newDownloadUrl = await snapshot.ref.getDownloadURL();

//     return newDownloadUrl;
//   } on FirebaseAuthException catch (e) {
//     print('FirebaseAuthException: ${e.message}');
//     return null;
//   } on FirebaseException catch (e) {
//     print('FirebaseException: ${e.message}');
//     return null;
//   } catch (e) {
//     print('Error: $e');
//     return null;
//   }
// }


// void updateUserImage(File newImageFile, String oldImageUrl) async {
//   String? newImageUrl = await updateImageInUserFolder(newImageFile, oldImageUrl);

//   if (newImageUrl != null) {
//     print('Image updated successfully. New Download URL: $newImageUrl');
//     // Update the image URL in your database if necessary
//   } else {
//     print('Image update failed.');
//     // Handle the update failure (e.g., show an error message)
//   }
// }
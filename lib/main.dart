import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myclassprojectpractice/controllers/authentication_updated_with_provider/authentication_controller_with_provider.dart';
import 'package:myclassprojectpractice/controllers/firebase_work_controller/firebase_crude_controller.dart';
import 'package:myclassprojectpractice/controllers/get_api_with_provider/get_api_with_provider.dart';
import 'package:myclassprojectpractice/controllers/statemenagement_contollers/statemenagement_controller.dart';
import 'package:myclassprojectpractice/firebase_options.dart';
import 'package:myclassprojectpractice/old_work/APIs/get_api_without_model.dart';
import 'package:myclassprojectpractice/old_work/APIs/practice_8_12_2024/api_hit_screen.dart';
import 'package:myclassprojectpractice/old_work/APIs/practice_8_13_2024/login_screen_4.dart';
import 'package:myclassprojectpractice/old_work/APIs/practice_8_13_2024/update_api.dart';
import 'package:myclassprojectpractice/old_work/Shared_Prefreneces_practice/delete_api_screen.dart';
import 'package:myclassprojectpractice/old_work/Shared_Prefreneces_practice/shared_pref.dart';
import 'package:myclassprojectpractice/old_work/responsiveness/responsviceness.dart';
import 'package:myclassprojectpractice/old_work/screens/practice25_7_2024/Home.dart';
import 'package:myclassprojectpractice/old_work/screens/practice_30_7_2024/grid_view_practice.dart';
import 'package:myclassprojectpractice/old_work/screens/practice_30_7_2024/homescreen.dart';
import 'package:myclassprojectpractice/old_work/screens/listTilePractice.dart';
import 'package:myclassprojectpractice/old_work/screens/login.dart';
import 'package:myclassprojectpractice/old_work/screens/practice_24_7_2024/listviewbuilder.dart';
import 'package:myclassprojectpractice/old_work/screens/practice_24_7_2024/setes_practice.dart';
import 'package:myclassprojectpractice/old_work/screens/practice_26_7_24/buttons.dart';
import 'package:myclassprojectpractice/old_work/screens/practice_26_7_24/task.dart';
import 'package:myclassprojectpractice/old_work/screens/practice_29_7_2024/widgetsPractice.dart';
import 'package:myclassprojectpractice/old_work/screens/practice_31_7_2024/login_screen_ui.dart';
import 'package:myclassprojectpractice/old_work/screens/practice_8_1_2024/google_fonts.dart';
import 'package:myclassprojectpractice/old_work/screens/practice_8_3_2024/home_screen.dart';
import 'package:myclassprojectpractice/old_work/screens/practice_8_3_2024/login_screen1.dart';
import 'package:myclassprojectpractice/view/firebase_work/authentication/login_with_email_and_password.dart';
import 'package:myclassprojectpractice/view/firebase_work/firestore_crud_operations.dart';
import 'package:myclassprojectpractice/view/firebase_work/signin_with_google/sign_with_goolge.dart';
import 'package:myclassprojectpractice/view/firebase_work/upload_image_firebase_storage/store_image_firebase_storage.dart';
import 'package:myclassprojectpractice/view/screens/authentication_screens/login_screens/login_screen.dart';
import 'package:myclassprojectpractice/view/screens/authentication_updated_with_provider/login_screen_with_provider.dart';
import 'package:myclassprojectpractice/view/screens/get_api_with_provider/get_api_with_provider.dart';
import 'package:myclassprojectpractice/view/screens/statememenagement/statemenagement1.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences prefObj;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // FirebaseOptions(
  //       apiKey: "AIzaSyCG1KHnakVAgXnVGS6KxwkQdZbnERMJe9M",
  //       authDomain: "batch2-project.firebaseapp.com",
  //       databaseURL: "https://batch2-project-default-rtdb.firebaseio.com",
  //       projectId: "batch2-project",
  //       storageBucket: "batch2-project.appspot.com",
  //       messagingSenderId: "422146735169",
  //       appId: "1:422146735169:web:d24fef8f9030d752855ac0"),

  


  prefObj = await SharedPreferences.getInstance();
  print("this is the value of login in main : ${prefObj.getBool("isLogin")}");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    bool isIamLogin = true;
    return MultiProvider(
      providers: [
      ChangeNotifierProvider(create: (context) => StatemenagementContoller()),
      ChangeNotifierProvider(create: (context) => AuthenticatioController()),
      ChangeNotifierProvider(create: (context) => GetApiWithProviderController()),
      ChangeNotifierProvider(create: (context) => FirebaseCrudeController()),
    ], child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SignInWithGooglee(),
      //prefObj.getBool("isLogin") != null && prefObj.getBool("isLogin") == true ? HomeScreen3() : LoginScreen2(),
      
    ),);
  }
}

// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAOah2IcH_ILy9O6yHmKUg4IVGL-rimYTw',
    appId: '1:422146735169:android:c9e0d1e5e93444a6855ac0',
    messagingSenderId: '422146735169',
    projectId: 'batch2-project',
    databaseURL: 'https://batch2-project-default-rtdb.firebaseio.com',
    storageBucket: 'batch2-project.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyARHN0b-s1W6Hveb0XH9bm-icQX-Sahb0o',
    appId: '1:422146735169:ios:3ede0e26555c21a4855ac0',
    messagingSenderId: '422146735169',
    projectId: 'batch2-project',
    databaseURL: 'https://batch2-project-default-rtdb.firebaseio.com',
    storageBucket: 'batch2-project.appspot.com',
    iosBundleId: 'com.example.myclassprojectpractice',
  );

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCG1KHnakVAgXnVGS6KxwkQdZbnERMJe9M',
    appId: '1:422146735169:web:d24fef8f9030d752855ac0',
    messagingSenderId: '422146735169',
    projectId: 'batch2-project',
    authDomain: 'batch2-project.firebaseapp.com',
    databaseURL: 'https://batch2-project-default-rtdb.firebaseio.com',
    storageBucket: 'batch2-project.appspot.com',
  );

}
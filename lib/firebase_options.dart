// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        return macos;
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBJPW8qA0xyHR_z5tj2YZzD43jzD2HYA5w',
    appId: '1:53357102724:web:d791b64dc97eded58464d1',
    messagingSenderId: '53357102724',
    projectId: 'crewin-test-project-553dc',
    authDomain: 'crewin-test-project-553dc.firebaseapp.com',
    storageBucket: 'crewin-test-project-553dc.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCdOAwGBmNKsug06wg0wNALwBbJRJ9RZPs',
    appId: '1:53357102724:android:44bbcc08bcb0f0ea8464d1',
    messagingSenderId: '53357102724',
    projectId: 'crewin-test-project-553dc',
    storageBucket: 'crewin-test-project-553dc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBZJZmke2o8fSuwrFZxmRPE1Z6Pp7iVapE',
    appId: '1:53357102724:ios:54ea6ea56fd6bc9f8464d1',
    messagingSenderId: '53357102724',
    projectId: 'crewin-test-project-553dc',
    storageBucket: 'crewin-test-project-553dc.appspot.com',
    iosClientId: '53357102724-8fbdhfj4a4c96lpik47n1rjv8s7r34c4.apps.googleusercontent.com',
    iosBundleId: 'com.example.testProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBZJZmke2o8fSuwrFZxmRPE1Z6Pp7iVapE',
    appId: '1:53357102724:ios:54ea6ea56fd6bc9f8464d1',
    messagingSenderId: '53357102724',
    projectId: 'crewin-test-project-553dc',
    storageBucket: 'crewin-test-project-553dc.appspot.com',
    iosClientId: '53357102724-8fbdhfj4a4c96lpik47n1rjv8s7r34c4.apps.googleusercontent.com',
    iosBundleId: 'com.example.testProject',
  );
}
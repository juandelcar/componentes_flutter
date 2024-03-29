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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDKLB7F27NPi0hpeM1DuAWrA_rXGW6B1No',
    appId: '1:135233288711:web:763d3e1151b63410e008a2',
    messagingSenderId: '135233288711',
    projectId: 'comp5c-24-2be27',
    authDomain: 'comp5c-24-2be27.firebaseapp.com',
    storageBucket: 'comp5c-24-2be27.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCKj0Ao5-GLpphHjyOjyPTuTK66INZL9PA',
    appId: '1:135233288711:android:461268e8556ccaece008a2',
    messagingSenderId: '135233288711',
    projectId: 'comp5c-24-2be27',
    storageBucket: 'comp5c-24-2be27.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBVUpoGJQPrVeCgJxrjELLZkHxEKqUqbcQ',
    appId: '1:135233288711:ios:d52c8944809f90f3e008a2',
    messagingSenderId: '135233288711',
    projectId: 'comp5c-24-2be27',
    storageBucket: 'comp5c-24-2be27.appspot.com',
    iosBundleId: 'com.example.practica3',
  );
}

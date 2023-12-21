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
    apiKey: 'AIzaSyBMYspOnFCaE3pgk_tEXgNzAgdvDURuDj4',
    appId: '1:586979181938:web:0cecfead5d8d4a73abc9eb',
    messagingSenderId: '586979181938',
    projectId: 'the-farm-app-8d59c',
    authDomain: 'the-farm-app-8d59c.firebaseapp.com',
    storageBucket: 'the-farm-app-8d59c.appspot.com',
    measurementId: 'G-8ERX5RVJK7',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDpTbHJJ_8eVPzItdXVklcE2LxFQZvsWjs',
    appId: '1:586979181938:android:8c9fb4aea35d36d7abc9eb',
    messagingSenderId: '586979181938',
    projectId: 'the-farm-app-8d59c',
    storageBucket: 'the-farm-app-8d59c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC-A-AWeANixf3sy13oNeVsBPBTMx9B2lk',
    appId: '1:586979181938:ios:4ee0e2b7e39594ceabc9eb',
    messagingSenderId: '586979181938',
    projectId: 'the-farm-app-8d59c',
    storageBucket: 'the-farm-app-8d59c.appspot.com',
    iosBundleId: 'com.example.farmApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC-A-AWeANixf3sy13oNeVsBPBTMx9B2lk',
    appId: '1:586979181938:ios:e2905a78e6a27aa3abc9eb',
    messagingSenderId: '586979181938',
    projectId: 'the-farm-app-8d59c',
    storageBucket: 'the-farm-app-8d59c.appspot.com',
    iosBundleId: 'com.example.farmApp.RunnerTests',
  );
}
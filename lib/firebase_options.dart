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
    apiKey: 'AIzaSyCOi495UyTmTbhWbv_AJoGzbHK7C3urbc0',
    appId: '1:675381860671:web:6af5102382db3bb62fdb8a',
    messagingSenderId: '675381860671',
    projectId: 'projeto-f7',
    authDomain: 'projeto-f7.firebaseapp.com',
    storageBucket: 'projeto-f7.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB1_0z1tJiP-H_e_NlOgDkgwHNNdGok5dc',
    appId: '1:675381860671:android:b038c674894abf232fdb8a',
    messagingSenderId: '675381860671',
    projectId: 'projeto-f7',
    storageBucket: 'projeto-f7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAZBVyf7sWOUneQ7KUbyyn03ZzQDkzocCA',
    appId: '1:675381860671:ios:5b48d5f23f73a1cf2fdb8a',
    messagingSenderId: '675381860671',
    projectId: 'projeto-f7',
    storageBucket: 'projeto-f7.appspot.com',
    iosBundleId: 'com.example.projetoF7',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAZBVyf7sWOUneQ7KUbyyn03ZzQDkzocCA',
    appId: '1:675381860671:ios:d98c9df52503a1fc2fdb8a',
    messagingSenderId: '675381860671',
    projectId: 'projeto-f7',
    storageBucket: 'projeto-f7.appspot.com',
    iosBundleId: 'com.example.projetoF7.RunnerTests',
  );
}

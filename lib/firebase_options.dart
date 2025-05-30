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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBCW0F5VJxdOQkGn2hgK1IS_INkkkf0Rso',
    appId: '1:719902330275:web:e107807b9fc90e61f95e16',
    messagingSenderId: '719902330275',
    projectId: 'flutter-auth-9b996',
    authDomain: 'flutter-auth-9b996.firebaseapp.com',
    storageBucket: 'flutter-auth-9b996.firebasestorage.app',
    measurementId: 'G-WHNZYGZGGK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCQ43O-QzBqRE1OYhhE-IkmOYKGtKt9wwI',
    appId: '1:719902330275:android:cb38d6c479d5f02af95e16',
    messagingSenderId: '719902330275',
    projectId: 'flutter-auth-9b996',
    storageBucket: 'flutter-auth-9b996.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBOm8z5Iudt4K30M0ZugzygPhYs_UUSxWQ',
    appId: '1:719902330275:ios:5441f64a8d3c6c10f95e16',
    messagingSenderId: '719902330275',
    projectId: 'flutter-auth-9b996',
    storageBucket: 'flutter-auth-9b996.firebasestorage.app',
    iosBundleId: 'com.example.flutterAuth',
  );
}

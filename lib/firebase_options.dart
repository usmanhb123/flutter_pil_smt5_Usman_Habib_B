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
    apiKey: 'AIzaSyAf82vRGGddwHtnZZsCzVwzs4f4MYHoE_o',
    appId: '1:103361829225:web:7f3f20337c696eb00445f8',
    messagingSenderId: '103361829225',
    projectId: 'task-management-ba1d0',
    authDomain: 'task-management-ba1d0.firebaseapp.com',
    storageBucket: 'task-management-ba1d0.appspot.com',
    measurementId: 'G-DG764ZYSM4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBOyV8hziSmzC2TRBPd2qCfYNB67OfGqTI',
    appId: '1:103361829225:android:55b834f722b2db9f0445f8',
    messagingSenderId: '103361829225',
    projectId: 'task-management-ba1d0',
    storageBucket: 'task-management-ba1d0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDxpQGyIGa9_mPN2gcOcSv8nfbgbZMsUFc',
    appId: '1:103361829225:ios:f3a9f620109a59a70445f8',
    messagingSenderId: '103361829225',
    projectId: 'task-management-ba1d0',
    storageBucket: 'task-management-ba1d0.appspot.com',
    androidClientId: '103361829225-bivond3sanai2oenknik3roi0e9ukb8h.apps.googleusercontent.com',
    iosClientId: '103361829225-2he2ksffrhod545ll1iklr37bu1hqkgu.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterPilSmt5',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDxpQGyIGa9_mPN2gcOcSv8nfbgbZMsUFc',
    appId: '1:103361829225:ios:f3a9f620109a59a70445f8',
    messagingSenderId: '103361829225',
    projectId: 'task-management-ba1d0',
    storageBucket: 'task-management-ba1d0.appspot.com',
    androidClientId: '103361829225-bivond3sanai2oenknik3roi0e9ukb8h.apps.googleusercontent.com',
    iosClientId: '103361829225-2he2ksffrhod545ll1iklr37bu1hqkgu.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterPilSmt5',
  );
}
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
    apiKey: 'AIzaSyBlJukrn30NNP33raFMiXDeUW0yHgSvR1k',
    appId: '1:16785990807:web:610a86796a73362ca4f5d2',
    messagingSenderId: '16785990807',
    projectId: 'authkiosko',
    authDomain: 'authkiosko.firebaseapp.com',
    storageBucket: 'authkiosko.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD4kFpb7Dp1iEFSHEOgJDaMgEVMFv73Iaw',
    appId: '1:16785990807:android:b3c2a0d3405c95d8a4f5d2',
    messagingSenderId: '16785990807',
    projectId: 'authkiosko',
    storageBucket: 'authkiosko.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDFRL4pPN6jB_MHz8YpmoceoPZ2rqjAmtM',
    appId: '1:16785990807:ios:4b07b891ed938580a4f5d2',
    messagingSenderId: '16785990807',
    projectId: 'authkiosko',
    storageBucket: 'authkiosko.appspot.com',
    iosClientId: '16785990807-7d18snauu546rna2ni90c3nfcn4086li.apps.googleusercontent.com',
    iosBundleId: 'com.example.kioskoApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDFRL4pPN6jB_MHz8YpmoceoPZ2rqjAmtM',
    appId: '1:16785990807:ios:c99cdf418d1a968da4f5d2',
    messagingSenderId: '16785990807',
    projectId: 'authkiosko',
    storageBucket: 'authkiosko.appspot.com',
    iosClientId: '16785990807-t54h8sf7vd4m1n0acrmfumm0c5ff8mf5.apps.googleusercontent.com',
    iosBundleId: 'com.example.kioskoApp.RunnerTests',
  );
}

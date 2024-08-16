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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyD0attytwga1mpO54vS7jqsWVk-Zy0vALI',
    appId: '1:873106435414:web:cd7249735322fa26bd7af7',
    messagingSenderId: '873106435414',
    projectId: 'chatapp-fe6d0',
    authDomain: 'chatapp-fe6d0.firebaseapp.com',
    storageBucket: 'chatapp-fe6d0.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBHCsx7-5o4IkOiuIavGYUcqFrhKuv-NWk',
    appId: '1:873106435414:android:14a3fed203bad7d0bd7af7',
    messagingSenderId: '873106435414',
    projectId: 'chatapp-fe6d0',
    storageBucket: 'chatapp-fe6d0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDfzGoBqnmbxTqpCuz8un-fagt_ELjPKUQ',
    appId: '1:873106435414:ios:a9807c1dcdb60bf8bd7af7',
    messagingSenderId: '873106435414',
    projectId: 'chatapp-fe6d0',
    storageBucket: 'chatapp-fe6d0.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDfzGoBqnmbxTqpCuz8un-fagt_ELjPKUQ',
    appId: '1:873106435414:ios:a9807c1dcdb60bf8bd7af7',
    messagingSenderId: '873106435414',
    projectId: 'chatapp-fe6d0',
    storageBucket: 'chatapp-fe6d0.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD0attytwga1mpO54vS7jqsWVk-Zy0vALI',
    appId: '1:873106435414:web:6b951e58aafed322bd7af7',
    messagingSenderId: '873106435414',
    projectId: 'chatapp-fe6d0',
    authDomain: 'chatapp-fe6d0.firebaseapp.com',
    storageBucket: 'chatapp-fe6d0.appspot.com',
  );
}

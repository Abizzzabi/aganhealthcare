import 'package:agan_healthcare_service/Appoinment.dart';
import 'package:agan_healthcare_service/login1.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
   WidgetsFlutterBinding.ensureInitialized();
    Firebase.initializeApp(
       options: const FirebaseOptions(
          apiKey: "AIzaSyCZxNTt6KDr9gWE5vvh2opSwrAFYH0lDD4",
          authDomain: "",
          projectId: "aganhealthcare-214d2",
          storageBucket: "",
          messagingSenderId: "321815968216",
          appId: "c1:321815968216:android:dcbdf58e00ed78205c9aad",
          measurementId: "")
    );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

import 'package:agan_healthcare_service/Appoinment.dart';
import 'package:agan_healthcare_service/dashboard.dart';
import 'package:agan_healthcare_service/doctorprofile.dart';
import 'package:agan_healthcare_service/history.dart';
import 'package:agan_healthcare_service/login2.dart';
import 'package:agan_healthcare_service/patientprofile.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:agan_healthcare_service/login1.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'neuralogist.dart';

String token = '';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized;
  // await Firebase.initializeApp();
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
      home: Historymodel(id: '',),
    );
  }
}

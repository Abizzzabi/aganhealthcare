import 'package:agan_healthcare_service/Appoinment.dart';
import 'package:agan_healthcare_service/login1.dart';
import 'package:agan_healthcare_service/patientprofile.dart';
import 'package:flutter/material.dart';

class offers extends StatefulWidget {
  const offers({super.key});

  @override
  State<offers> createState() => _offersState();
}

class _offersState extends State<offers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 42, 109, 52),
        toolbarHeight: 50,
        elevation: 0,
        leading: Icon(Icons.arrow_back, color: Colors.white,),
        title: Text('OFFERS', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
        centerTitle: true,
        actions: [
           TextButton
          (child:Icon(Icons.notifications, size: 30, color: Colors.white),
          onPressed: () {},
          ),
           TextButton
          (child:Icon(Icons.account_circle_outlined, size: 30, color: Colors.white),
          onPressed: () {
              Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const login()),
  );
          },
          )
        ],
      ),
    );
  }
}
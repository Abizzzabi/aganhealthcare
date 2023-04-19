import 'package:agan_healthcare_service/Appoinment.dart';
import 'package:agan_healthcare_service/offers.dart';
import 'package:flutter/material.dart';
import 'package:agan_healthcare_service/login1.dart';
class doctorprofile extends StatefulWidget {
  const doctorprofile({super.key});

  @override
  State<doctorprofile> createState() => _doctorprofileState();
}

class _doctorprofileState extends State<doctorprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 42, 109, 52),
        toolbarHeight: 50,
        elevation: 0,
        leading: IconButton(icon: const Icon(Icons.arrow_back),
        onPressed: (() {
        }),
        ),
        title: Text('DOCTOR PROFILE', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
        centerTitle: true,
        actions: [
           TextButton
          (child:Icon(Icons.notifications, 
          size: 30, color: Colors.white,
          
          ),
          onPressed: () {},
          ),
           TextButton
          (child:Icon(Icons.account_circle_outlined, size: 30, color: Colors.white),
          onPressed: () {},
          )
        ],
      ),
     body: SingleChildScrollView(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
          Padding(padding: EdgeInsets.only(top: 10,left : 15),
         child:CircleAvatar(
            backgroundImage: AssetImage('assets/image/lady doctor.png'),
            radius: 90,
          )
          ),
          Padding(padding: EdgeInsets.only(top:15, left: 10 ),
          child: ListTile(
            title: Text('Dr.Annah Ray', style: TextStyle(fontWeight: FontWeight.bold,),),
            subtitle: Text('Specialist of implants and cosmetic dentistry'),
          ),
          ),
          // Padding(padding: EdgeInsets.all(8),
          // child: Text('Dr.Annah Ray', style: TextStyle(fontWeight: FontWeight.bold),),
          // )
          Padding(padding: EdgeInsets.only(top:15, left: 10 ),
          child: ListTile(
            title: Text('Clinic Name', style: TextStyle(fontWeight: FontWeight.bold,),),
            subtitle: Text('Kwane Nkrumah Circle'),
          ),
          ),
          Padding(padding: EdgeInsets.only(top:15, left: 10 ),
          child: ListTile(
            title: Text('Clinic Address', style: TextStyle(fontWeight: FontWeight.bold,),),
            subtitle: Text('Kwame Nkrumah Circle , Accra  Ghana lorem ipsum dolor sit amet, constnene afipesing elie , sed ddeelkj'),
          ),
          ),
           Padding(padding: EdgeInsets.only(top:15, left: 10 ),
          child: ListTile(
            title: Text('Specialities', style: TextStyle(fontWeight: FontWeight.bold,),),
            subtitle: Text('Cosmetic Dentistry'),
          ),
          ),
           Padding(padding: EdgeInsets.only(top:15, left: 10 ),
          child: ListTile(
            title: Text('Experience', style: TextStyle(fontWeight: FontWeight.bold,),),
            subtitle: Text('15 years of experience'),
          ),
          ),
           Padding(padding: EdgeInsets.only(top:15, left: 10 ),
          child: ListTile(
            title: Text('Available Time', style: TextStyle(fontWeight: FontWeight.bold,),),
            subtitle: Text('7.30 pm to 10.00 pm'),
          ),
          ),
          Padding(padding: EdgeInsets.only(top:10, left: 10 ),
          child: ListTile(
            title: Text('Clinic', style: TextStyle(fontWeight: FontWeight.bold,),),
            //subtitle: Text('7.30 pm to 10.00 pm'),
          ),
          ),
          //Padding(padding: EdgeInsets.only(top: 15,),),
           Container(
              width: double.infinity,
              height: 200,
              margin: const EdgeInsets.only(left: 15, right: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(image: AssetImage('assets/image/lab.png',
                ),

                fit: BoxFit.cover,
                )
              ),
            ),
          
          Padding(padding: EdgeInsets.only(top:20, left: 10 ),
          child: ListTile(
            title: Text('About', style: TextStyle(fontWeight: FontWeight.bold,),),
            subtitle: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
          ),
          ),
          Padding(padding: EdgeInsets.only(top:20 ),),
          ElevatedButton(onPressed: (() {
             Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Appoinment()),
  );
          }), 
          //child: Text('Book Appoinment'),
          style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 42, 109, 52),
                padding:
                    const EdgeInsets.symmetric(horizontal: 90, vertical: 10),
                textStyle:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold,)),
            child: const Text('Book Appoinment',style: TextStyle(fontSize: 20, color: Colors.white),),
          )
         ],
       ),
     ),
    );
  }
}
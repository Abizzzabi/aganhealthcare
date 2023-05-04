import 'package:agan_healthcare_service/Appoinment.dart';
import 'package:agan_healthcare_service/offers.dart';
import 'package:flutter/material.dart';

class Patientprofile extends StatefulWidget {
  const Patientprofile({super.key});

  @override
  State<Patientprofile> createState() => _PatientprofileState();
}

class _PatientprofileState extends State<Patientprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 42, 109, 52),
        toolbarHeight: 50,
        elevation: 0,
        leading: IconButton(onPressed:(() {
          Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Appoinment()),
  );
        }) , icon: Icon(Icons.arrow_back)),
        title: Text('PROFILE', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
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
    MaterialPageRoute(builder: (context) => const Offers()),
  );
          },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 15,left : 18, right: 15),
         child: Container(
              width: double.infinity,
              height: 230,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color.fromRGBO(223, 242, 216, 1),
                ),
                padding: EdgeInsets.all(10),
                child: Image.asset('assets/profile2.jpg'
                ),
         ),
          ),
          Padding(padding: EdgeInsets.only(top: 20, right: 240),
          child: Text('Company Name', style: TextStyle(fontWeight: FontWeight.bold,),
          ),
          ),
          Padding(padding: EdgeInsets.only(top: 5,left: 10, right: 10),
          child: TextField(
            style: TextStyle(
              height: 1),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                )
              ),
          ),
          ),
           Padding(padding: EdgeInsets.only(top: 15, right: 260),
          child: Text('Employee ID', style: TextStyle(fontWeight: FontWeight.bold,),
          ),
          ),
          Padding(padding: EdgeInsets.only(top: 5, left: 10, right: 10),
          child: TextField(
            style: TextStyle(
              height: 1),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                )
              ),
          ),
          ),
          Row(
              children: [
                Padding(padding: EdgeInsets.only(top: 15,left: 20),
                child: Text('Experience',style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                SizedBox(width: 80,),
                Padding(padding: EdgeInsets.only(top: 10, left: 30),
                child:
                Text('Designation',style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ],
             ),
             Padding(padding: EdgeInsets.only(left: 15),
            child: Row(
             children: [
               SizedBox(width: 130,
          child:    Expanded(child: TextField(
            style: TextStyle(height: 1),
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: 
                  BorderRadius.circular(15),
                  
                  )
                ),
              )),),
              SizedBox(width: 40,),
            
            SizedBox(width: 190,               
               child: Expanded(child: TextField(
                style: TextStyle(height: 1),
                decoration: InputDecoration(
                  //contentPadding: EdgeInsets.symmetric(horizontal: 100.0),
                  border: OutlineInputBorder(borderRadius: 
                  BorderRadius.circular(15)
                  )
                ),
              )),),
             ],
             ),),
              Row(
              children: [
                Padding(padding: EdgeInsets.only(top: 15,left: 20),
                child: Text('Age',style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                SizedBox(width: 120,),
                Padding(padding: EdgeInsets.only(top: 10, left: 30),
                child:
                Text('Gender',style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ],
             ),
             Padding(padding: EdgeInsets.only(left: 15),
            child: Row(
             children: [
               SizedBox(width: 130,
          child:    Expanded(child: TextField(
            style: TextStyle(height: 1),
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: 
                  BorderRadius.circular(15),
                  
                  )
                ),
              )),),
              SizedBox(width: 40,),
            
            SizedBox(width: 190,               
               child: Expanded(child: TextField(
                style: TextStyle(height: 1),
                decoration: InputDecoration(
                  //contentPadding: EdgeInsets.symmetric(horizontal: 100.0),
                  border: OutlineInputBorder(borderRadius: 
                  BorderRadius.circular(15)
                  )
                ),
              )),),
             ],
             ),),
             Padding(padding: EdgeInsets.only(top: 15, right: 260),
          child: Text('Mobile Number', style: TextStyle(fontWeight: FontWeight.bold,),
          ),
          ),
          Padding(padding: EdgeInsets.only(top: 5, left: 10, right: 10),
          child: TextField(
            style: TextStyle(
              height: 1),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                )
              ),
          ),
          ),
           Padding(padding: EdgeInsets.only(top: 15, right: 280),
          child: Text('E-mail ID', style: TextStyle(fontWeight: FontWeight.bold,),
          ),
          ),
          Padding(padding: EdgeInsets.only(top: 5, left: 10, right: 10),
          child: TextField(
            style: TextStyle(
              height: 1),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                )
              ),
          ),
          ),
          Row(
              children: [
                Padding(padding: EdgeInsets.only(top: 15,left: 20),
                child: Text('Family Members',style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                SizedBox(width: 100,),
                Padding(padding: EdgeInsets.only(top: 10, left: 30),
                child:
                Text('Age',style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ],
             ),
             Padding(padding: EdgeInsets.only(left: 15),
            child: Row(
             children: [
             
            SizedBox(width: 190,               
               child: Expanded(child: TextField(
                style: TextStyle(height: 1),
                decoration: InputDecoration(
                  //contentPadding: EdgeInsets.symmetric(horizontal: 100.0),
                  border: OutlineInputBorder(borderRadius: 
                  BorderRadius.circular(15)
                  )
                ),
              )),),
               SizedBox(width: 40,),
            
               SizedBox(width: 130,
          child:    Expanded(child: TextField(
            style: TextStyle(height: 1),
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: 
                  BorderRadius.circular(15),
                  
                  )
                ),
              )),),
              
             ],
             ),),
              Padding(padding: EdgeInsets.only(top: 15, right: 280),
          child: Text('Relation', style: TextStyle(fontWeight: FontWeight.bold,),
          ),
          ),
          Padding(padding: EdgeInsets.only(top: 5, left: 10, right: 10),
          child: TextField(
            style: TextStyle(
              height: 1),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                )
              ),
          ),
          ),
           Padding(padding: EdgeInsets.only(top: 15, right: 280),
          child: Text('Address', style: TextStyle(fontWeight: FontWeight.bold,),
          ),
          ),
          Padding(padding: EdgeInsets.only(top: 5, left: 10, right: 10),
          child: TextField(
            style: TextStyle(
              height: 3),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                )
              ),
          ),
          ),
           Padding(padding: const EdgeInsets.all(25),
             child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 42, 109, 52),
                padding:
                    const EdgeInsets.symmetric(horizontal: 90, vertical: 10),
                textStyle:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold,)),
            child: const Text('Save',style: TextStyle(fontSize: 20, color: Colors.white),),
),
             ), 
              
          ],
        ),
      ),
    );
  }
}
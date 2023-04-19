import 'package:agan_healthcare_service/Appoinment.dart';
import 'package:agan_healthcare_service/dashboard.dart';
import 'package:agan_healthcare_service/patientprofile.dart';
import 'package:agan_healthcare_service/offers.dart';
import 'package:flutter/material.dart';

class login2 extends StatefulWidget {
  const login2({super.key});

  @override
  State<login2> createState() => _login2State();
}

class _login2State extends State<login2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(top: 60,left: 120,bottom: 60),
              child:Image.asset('assets/image/plus1.jpg',),),
              Padding(padding: EdgeInsets.only(left: 50),
              child: Row(
                children: [
                  SizedBox(width: 35,),
                  Text.rich(
                    TextSpan(
                      text: 'A',
                      style: TextStyle(
                        fontSize: 30,
                        color:  Color.fromARGB(255, 42, 109, 52),),
                      children: [
                        TextSpan(
                          text: 'GAN',
                          style: TextStyle(
                            fontSize: 20,
                            color:  Color.fromARGB(255, 42, 109, 52),
                          )
                        )
                      ]
                    )
                  ),
                  SizedBox(width: 20,),
                  Text.rich(
                    TextSpan(
                      text: 'H',
                      style: TextStyle(
                        fontSize: 30,
                        color:  Color.fromARGB(255, 42, 109, 52),),
                      children: [
                        TextSpan(
                          text: 'EALTHCARE',
                          style: TextStyle(
                            fontSize: 20,
                            color:  Color.fromARGB(255, 42, 109, 52),
                          )
                        )
                      ]
                    )
                  )
                ],
              ),
              ),
              Padding(padding: EdgeInsets.only(left: 140),
              child: Text.rich(
                TextSpan(
                  text: 'S',
                  style: TextStyle(
                        fontSize: 30,
                        color:  Color.fromARGB(255, 42, 109, 52),),
                      children: [
                        TextSpan(
                          text: 'ERVICES',
                          style: TextStyle(
                            fontSize: 20,
                            color:  Color.fromARGB(255, 42, 109, 52),
                          )
                        ),
                      ]
                )
              ),
              ),
              Padding(padding: EdgeInsets.only(top: 30, left: 45),
              child: Text('Enter the OTP sent to your number',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                //fontWeight: FontWeight.bold
              ),
              ),
              ),
             Padding(padding: EdgeInsets.only(left: 50, top: 20),
              child: Row(
               children: [
                 SizedBox(width: 50,
                 height: 50,
            child:    Expanded(child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: 
                    BorderRadius.circular(12),
                    
                    )
                  ),
                )),),
                SizedBox(width: 30,),
              
              SizedBox(width: 50,
              height: 50,               
                 child: Expanded(child: TextField(
                  decoration: InputDecoration(
                    //contentPadding: EdgeInsets.symmetric(horizontal: 100.0),
                    border: OutlineInputBorder(borderRadius: 
                    BorderRadius.circular(12)
                    )
                  ),
                )),),
                SizedBox(width: 30,),
              
              SizedBox(width: 50,
              height: 50,               
                 child: Expanded(child: TextField(
                  decoration: InputDecoration(
                    //contentPadding: EdgeInsets.symmetric(horizontal: 100.0),
                    border: OutlineInputBorder(borderRadius: 
                    BorderRadius.circular(12)
                    )
                  ),
                )),),
                SizedBox(width: 30,),
              
              SizedBox(width: 50,
              height: 50,               
                 child: Expanded(child: TextField(
                  decoration: InputDecoration(
                    //contentPadding: EdgeInsets.symmetric(horizontal: 100.0),
                    border: OutlineInputBorder(borderRadius: 
                    BorderRadius.circular(12)
                    )
                  ),
                )),),
               ],
               ),),
               Padding(padding: EdgeInsets.only(left: 130, top: 20),
                child: Text("Didn't Receive OTP?"),
               ),
               Padding(padding: EdgeInsets.only(left: 150, top: 18),
                child: Text("Resend OTP",
                style: TextStyle(
                  fontSize: 17,
                  
                  fontWeight: FontWeight.bold
                ),
                ),
               ),
               Padding(padding: EdgeInsets.only(top: 30, left: 20, right: 12),
                child: SizedBox(height: 40, width: 350,
                child: ElevatedButton(onPressed: () {
                  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Dashboard()),
  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 42, 109, 52),
                  padding: EdgeInsets.symmetric(horizontal: 90, vertical: 10),
                ), 
                child: Text('Verify OTP'),
                ),
                ),
                )
            ]
        ),
      )
    );
  }
}
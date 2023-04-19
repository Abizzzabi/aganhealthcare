import 'package:agan_healthcare_service/login2.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
        
      child:  Center(
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
              Padding(padding: EdgeInsets.only(top: 30, left: 30),
              child: Text('Enter your mobile number',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),
              ),
              ),
              SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: IntlPhoneField(
                      decoration: InputDecoration(
                        //labelText: 'Phone Number',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(),
                        ),
                      ),
                      onChanged: (phone) {
                        print(phone.completeNumber);
                      },
                      onCountryChanged: (country) { 
                        print('Country changed to: ' + country.name);
                      },
                    ),
                  ),
                  
              
              Padding(padding: EdgeInsets.only(top: 25, left: 60),
              child: Text('We will send you an One Time Password'),
              ),
              Padding(padding: EdgeInsets.only(left: 120),
              child: Text('on this mobile number'),
              ),
              Padding(padding: EdgeInsets.only(top: 30, left: 20, right: 12),
              child: SizedBox(height: 40, width: 350,
              child: ElevatedButton(onPressed: () {
                Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const login2()),
  );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 42, 109, 52),
                padding: EdgeInsets.symmetric(horizontal: 90, vertical: 10),
              ), 
              child: Text('Send OTP'),
              ),
              ),
              )
            ],
          ),
        ),
        ),
    );
  }
}
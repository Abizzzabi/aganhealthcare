import 'dart:convert';

import 'package:agan_healthcare_service/controller/mobilecontroller.dart';
import 'package:agan_healthcare_service/login2.dart';
import 'package:agan_healthcare_service/models/mobilemodel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  const Login({super.key});
  static String Verify='';
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final phoneNumber = TextEditingController();
  TextEditingController countrycode=TextEditingController();
  TextEditingController otp = TextEditingController();
  var user = '';
  bool _isLoading = false;
  MobileController _mobileController = MobileController();
  var phone;

  @override
  void initState() {
   countrycode.text="+91";
    super.initState();
  }

  // void dispose() {
  //   phoneNumber.dispose();
  //   otp.dispose();
  //   super.dispose();
  // }

  agan() async {
    try {
      var url =
          "https://agen-healthcare.nw.r.appspot.com/api/Auth/employee/check_register_mobile";
      var response = await http.get(Uri.parse(url));
      Map<String, dynamic> data =
          jsonDecode(response.body) as Map<String, dynamic>;
      print(response.body);

      Status:
      true;
      setState(() {
        _isLoading = false;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 120, bottom: 60),
                child: Image.asset(
                  'assets/image/plus1.jpg',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Row(
                  children: const [
                    SizedBox(
                      width: 35,
                    ),
                    Text.rich(TextSpan(
                        text: 'A',
                        style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 42, 109, 52),
                        ),
                        children: [
                          TextSpan(
                              text: 'GAN',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 42, 109, 52),
                              ))
                        ])),
                    SizedBox(
                      width: 20,
                    ),
                    Text.rich(TextSpan(
                        text: 'H',
                        style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 42, 109, 52),
                        ),
                        children: [
                          TextSpan(
                              text: 'EALTHCARE',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 42, 109, 52),
                              ))
                        ]))
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 140),
                child: Text.rich(TextSpan(
                    text: 'S',
                    style: TextStyle(
                      fontSize: 30,
                      color: Color.fromARGB(255, 42, 109, 52),
                    ),
                    children: [
                      TextSpan(
                          text: 'ERVICES',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 42, 109, 52),
                          )),
                    ])),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30, left: 30),
                child: Text(
                  'Enter your mobile number',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Flexible(
                    //   child: Container(
                    //     height: 47,
                    //     width: 50,
                    //     margin: const EdgeInsets.fromLTRB(0, 10, 3, 32),
                    //     //padding: EdgeInsets.fromLTRB(0, 10, 0, 50),
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(4),
                    //       border: Border.all(
                    //         color: Colors.grey,
                    //       ),
                    //     ),
                    //     child: const Center(
                    //       child: Text(
                    //         "+91",
                    //         style: TextStyle(
                    //           color: Colors.black,
                    //           fontWeight: FontWeight.bold,
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    Flexible(
                      flex: 5,
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        onChanged: (value) {
                          phone=value;
                        },
                        controller: phoneNumber,
                        maxLines: 1,
                        maxLength: 10,
                        //initialValue: "8610291830",
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(6),
                          hintText: "Mobile Number",
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1,
                            ),
                          ),
                        ),
                        validator: ((value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your phone number';
                          }
                          return null;
                        }),
                      ),
                    ),
                    
                  ],
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 20, right: 20),
              //   child: IntlPhoneField(
              //     controller: phoneNumber,
              //     keyboardType: TextInputType.phone,
              //     decoration: InputDecoration(
              //       //labelText: 'Phone Number',
              //       border: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(12),
              //         borderSide: const BorderSide(),
              //       ),
              //     ),
              //     onChanged: (value) {
              //       phoneNumber = value as TextEditingController;
              //     },
              //     onCountryChanged: (country) {
              //       print('Country changed to: ' + country.name);
              //     },
              //   ),
              // ),
              const Padding(
                padding: EdgeInsets.only(top: 25, left: 60),
                child: Text('We will send you an One Time Password'),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 120),
                child: Text('on this mobile number'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20, right: 12),
                child: SizedBox(
                  height: 40,
                  width: 350,
                  child:_isLoading?
                  CircularProgressIndicator():
                  ElevatedButton(
                    onPressed: () async {
                     
                      if (_formKey.currentState!.validate()) {
                          setState(() {
                        _isLoading=true;
                      });

                        final user = await _mobileController
                            .fetchAlbum(phoneNumber.text);

                            print(user.msg);

                        if (user.status == true) {
                          await FirebaseAuth.instance.verifyPhoneNumber(
  phoneNumber: '${countrycode.text+phone}',
  verificationCompleted: (PhoneAuthCredential credential) {},
  verificationFailed: (FirebaseAuthException e) {},
  codeSent: (String verificationId, int? resendToken) {
         Login.Verify=verificationId;
         Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  login2()),                            
                          );
  },
  codeAutoRetrievalTimeout: (String verificationId) {},
);
                          
                      
                      // temp = await FirebaseAuthentication()
                      //     .sendOTP(phoneNumber.text);
                     
                          ScaffoldMessenger.of(context)
                              .showSnackBar(SnackBar(content: Text("OTp sent to the entered mobile number")));
                        } else {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(SnackBar(content: Text(user.msg)));
                        }
                      }

                     
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 42, 109, 52),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 90, vertical: 10),
                    ),
                    child: const Text('Send OTP'),
                  )
                )
              )
            ],
          ),
        ),
      ),
    ));
  }
}

// class FirebaseAuthentication {
//   String phoneNumber = "";
//   String otp="";

//   sendOTP(String phoneNumber) async {
//     this.phoneNumber = phoneNumber;
//     this.otp=otp;
//     FirebaseAuth auth = FirebaseAuth.instance;
//     ConfirmationResult result = await auth.signInWithPhoneNumber(
//       '+91$phoneNumber',
      
//     );
//     printMessage("OTP Sent to +91 $phoneNumber");
//     return result;
//   }

//   authenticate(ConfirmationResult confirmationResult, String otp) async {
//     UserCredential userCredential = await confirmationResult.confirm(otp);
//     userCredential.additionalUserInfo!.isNewUser
//         ? printMessage("Authentication Successful")
//         : printMessage("User already exists");
//   }

//   printMessage(String msg) {
//     debugPrint(msg);
//   }
// }

import 'package:agan_healthcare_service/Appoinment.dart';
import 'package:agan_healthcare_service/controller/tokencontroller.dart';
import 'package:agan_healthcare_service/dashboard.dart';
import 'package:agan_healthcare_service/patientprofile.dart';
import 'package:agan_healthcare_service/offers.dart';
import 'package:alt_sms_autofill/alt_sms_autofill.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/phone_number.dart';
//import 'package:pinput/pinput.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'globals.dart' as globals;


import 'login1.dart';

class login2 extends StatefulWidget {
  const login2({super.key});

  @override
  State<login2> createState() => _login2State();
}

class _login2State extends State<login2> {
  TokenController _tokenController=TokenController();
final   FirebaseAuth auth=FirebaseAuth.instance;
  var temp1;
  final _formKey1 = GlobalKey<FormState>();
  TextEditingController otp=TextEditingController();
  bool visible=false;
  var code='';
@override
  void dispose() {
    otp.dispose();
    //AltSmsAutofill().unregisterListener();
    super.dispose();
  }
  
// void dispose(){
  
//   otp.dispose();
//   super.dispose();
// }
  bool otpCodevisible=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
      key: _formKey1,
    child:  SingleChildScrollView(
      child:Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: const EdgeInsets.only(top: 60,left: 120,bottom: 60),
              child:Image.asset('assets/plus1.jpg',),),
              Padding(padding: const EdgeInsets.only(left: 50),
              child: Row(
                children: const [
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
              const Padding(padding: EdgeInsets.only(left: 140),
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
              const Padding(padding: EdgeInsets.only(top: 30, left: 40),
              child: Text('Enter the OTP sent to your number',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                //fontWeight: FontWeight.bold
              ),
              ),
              ),
             Padding(padding: const EdgeInsets.only(left: 50, top: 20),
            child:PinCodeTextField(
          appContext: context,
          pastedTextStyle: TextStyle(
            color: Colors.green.shade600,
            fontWeight: FontWeight.bold,
          ),
          length: 6,
          obscureText: false,
          animationType: AnimationType.fade,
          pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(10),
            fieldHeight: 50,
            fieldWidth: 40,
            inactiveFillColor: Colors.white,
           
            selectedFillColor: Colors.white,
            activeFillColor: Colors.white,
           
          ),
          cursorColor: Colors.black,
          animationDuration: Duration(milliseconds: 300),
          enableActiveFill: true,
          controller: otp,
          keyboardType: TextInputType.text,
          boxShadows: [
            BoxShadow(
              offset: Offset(0, 1),
              color: Colors.black12,
              blurRadius: 10,
            )
          ],
          onCompleted: (v) {
            //do something or move to next screen when code complete
          }, onChanged: (String value) {
               code=value;
          },
          
        ),
             ),
               const Padding(padding: EdgeInsets.only(left: 130, top: 20),
                child: Text("Didn't Receive OTP?"),
               ),
               const Padding(padding: EdgeInsets.only(left: 150, top: 18),
                child: Text("Resend OTP",
                style: TextStyle(
                  fontSize: 17,
                  
                  fontWeight: FontWeight.bold
                ),
                ),
               ),
               Padding(padding: const EdgeInsets.only(top: 30, left: 20, right: 12),
                child: SizedBox(height: 40, width: 350,
                child: ElevatedButton(onPressed: () async {
                  try{
                       PhoneAuthCredential credential = PhoneAuthProvider.credential(
                        verificationId: Login.Verify, smsCode: code);
                  // Sign the user in (or link) with the credential
                  // print('sona');
                  //print(9843342571);

                  await auth.signInWithCredential(credential);
                   Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  Dashboard()),
                          );
                          final user = await _tokenController
                                      .fetchAlbum('${globals.mobile}');
                  }
                  catch(e){
                     print('wrong otp');
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 42, 109, 52),
                  padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 10),
                ), 
                child: const Text('Verify OTP'),
                ),
                ),
                )
            ]
        ),
      )
      ),
    ));
  }
}

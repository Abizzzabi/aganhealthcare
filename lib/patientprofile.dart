import 'package:agan_healthcare_service/Appoinment.dart';
import 'package:agan_healthcare_service/offers.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
class Patientprofile extends StatefulWidget {
  const Patientprofile({super.key});

  @override
  State<Patientprofile> createState() => _PatientprofileState();
}
class _PatientprofileState extends State<Patientprofile> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController employeeController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController maritalController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 42, 109, 52),
        toolbarHeight: 50,
        elevation: 0,
        leading: IconButton(
            onPressed: (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Appoinment()),
              );
            }),
            icon: const Icon(Icons.arrow_back)),
        title: const Text(
          'PROFILE',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            child: const Icon(Icons.notifications, size: 30, color: Colors.white),
            onPressed: () {},
          ),
          TextButton(
            child: const Icon(Icons.account_circle_outlined,
                size: 30, color: Colors.white),
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
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 18, right: 15),
                child: Container(
                  width: double.infinity,
                  height: 230,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color.fromRGBO(223, 242, 216, 1),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Image.asset('assets/profile2.jpg'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, right: 300),
                child: Text(
                  'Name',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  child: TextFormField(
                    controller: nameController,
                    style: const TextStyle(height: 1),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
                    onChanged: (value) {
                      _formKey.currentState?.validate();
                    },
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter your Name";
                      }
                      return null;
                    },
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, right: 240),
                child: Text(
                  'Company Name',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  child: TextFormField(
                    style: const TextStyle(height: 1),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15, right: 260),
                child: Text(
                  'Employee ID',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  child: TextFormField(
                    controller: employeeController,
                    style: const TextStyle(height: 1),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
                    //keyboardType:  TextInputType.phone,
                    onChanged: (value) {
                      _formKey.currentState?.validate();
                    },
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter your ID";
                      }
                      return null;
                    },
                  ),
                ),
              ),
              Row(
                children: const [
                   Padding(
                    padding: EdgeInsets.only(top: 15, left: 35),
                    child: Text(
                      'Age',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    width: 120,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10, left: 30),
                    child: Text(
                      'Gender',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    SizedBox(
                      width: 150,
                      child: Expanded(
                          child: Container(
                        width: double.infinity,
                        height: 50,
                        child: TextFormField(
                          style: const TextStyle(height: 1),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          )),
                        ),
                      )),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    SizedBox(
                      width: 190,
                      child: Expanded(
                          child: Container(
                        width: double.infinity,
                        height: 50,
                        child: TextFormField(
                          controller: genderController,
                          style: const TextStyle(height: 1),
                          decoration: InputDecoration(
                              //contentPadding: EdgeInsets.symmetric(horizontal: 100.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15))),
                         validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter your Gender";
                      } else if (!RegExp(
                              r'^(Male|Female|Other)$', caseSensitive:false)
                          .hasMatch(val)) {
                       
                      }
                    },
                        ),
                      )),
                    ),
                  ],
                ),
              ),
                const Padding(
                padding: EdgeInsets.only(top: 20, right: 280),
                child: Text(
                  'Marital Status',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  child: TextFormField(
                    controller: maritalController,
                    style: const TextStyle(height: 1),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
                       validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter your Gender";
                      } else if (!RegExp(
                              r'^(Single|Married|Divorcee|Widow)$',)
                          .hasMatch(val)) {
                       
                      }
                    },
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15, right: 260),
                child: Text(
                  'Mobile Number',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  child: TextFormField(
                    controller: phoneController,
                    style: const TextStyle(height: 1),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
                    keyboardType: TextInputType.phone,
                    onChanged: (value) {
                      _formKey.currentState?.validate();
                    },
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter a Phone Number";
                      } else if (!RegExp(
                              r'^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$')
                          .hasMatch(val)) {
                        return "Please Enter a Valid Phone Number";
                      }
                    },
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15, right: 280),
                child: Text(
                  'E-mail ID',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  child: TextFormField(
                    controller: emailController,
                    style: const TextStyle(height: 1),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
                    
                    onChanged: (value) {
                      _formKey.currentState?.validate();
                    },
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter your EmailID";
                      }
                      return null;
                    },
                  ),
                ),
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 15, left: 30),
                    child: Text(
                      'Family Members',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10, left: 30),
                    child: Text(
                      'Age',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    SizedBox(
                      width: 190,
                      child: Expanded(
                          child: Container(
                        width: double.infinity,
                        height: 50,
                        child: TextField(
                          style: const TextStyle(height: 1),
                          decoration: InputDecoration(
                              //contentPadding: EdgeInsets.symmetric(horizontal: 100.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15))),
                        ),
                      )),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    SizedBox(
                      width: 154,
                      child: Expanded(
                          child: Container(
                        width: double.infinity,
                        height: 50,
                        child: TextField(
                          style: const TextStyle(height: 1),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          )),
                        ),
                      )),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15, right: 280),
                child: Text(
                  'Address',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  child: TextField(
                    style: const TextStyle(height: 3),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Offers()));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 42, 109, 52),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 140, vertical: 10),
                      textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      )),
                  child: const Text(
                    'Save',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:agan_healthcare_service/controller/formcontroller.dart';
import 'package:agan_healthcare_service/offers.dart';
import 'package:agan_healthcare_service/patientprofile.dart';
import 'package:flutter/material.dart';
import 'package:material_dialogs/material_dialogs.dart';

import 'dropdown.dart';
import 'models/formmodels.dart';

class Appoinment extends StatefulWidget {
  const Appoinment({super.key});

  @override
  State<Appoinment> createState() => _AppoinmentState();
}

class _AppoinmentState extends State<Appoinment> {
  final Employeecontroller=TextEditingController();
  final Namecontroller=TextEditingController();
  final Agecontroller=TextEditingController();
  final Gendercontroller=TextEditingController();
   var _formKey = GlobalKey<FormState>();
  var isLoading = false;
  
  void _submit() {
    final isValid = _formKey.currentState?.validate();
    if (isValid!) {
      return;
    }
    _formKey.currentState?.save();
  }
  late Future<Option> futureAlbum;
  Option? formController;
 List<Option> _forms=[];
 @override
 void initState(){
  super.initState();
  
 }
 String serviceid="";
 
  int _value = 1;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 42, 109, 52),
        toolbarHeight: 50,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        title: const Text(
          'APPOINMENT',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            child:
                const Icon(Icons.notifications, size: 30, color: Colors.white),
            onPressed: () {},
          ),
          TextButton(
            child: const Icon(Icons.account_circle_outlined,
                size: 30, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Patientprofile()),
              );
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(padding: EdgeInsets.only(top: 12, right: 30)),
          const Padding(
            padding: EdgeInsets.only(top: 15, left: 25),
            child: Text(
              'Employee ID',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
            child: TextField(
              controller: Employeecontroller,
                key: _formKey,
              style: const TextStyle(height: 1),
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, left: 25),
            child: Text(
              'Name',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
            child: TextField(
              controller: Namecontroller,
              style: const TextStyle(height: 1),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide:
                      const BorderSide(color: Colors.redAccent, width: 2.0),
                ),
              ),
            ),
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 10, left: 30),
                child: Text(
                  'Age',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 160,
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, right: 20, left: 25),
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
                Container(
                  height: 50,
                  width: 140,
                  child: Expanded(
                      child: TextField(
                        controller: Agecontroller,
                    style: const TextStyle(height: 1),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
                  )),
                ),
                const SizedBox(
                  width: 80,
                ),
                Container(
                  height: 50,
                  width: 160,
                  child: Expanded(
                      child: TextField(
                        controller: Gendercontroller,
                    style: const TextStyle(height: 1),
                    decoration: InputDecoration(
                        //contentPadding: EdgeInsets.symmetric(horizontal: 100.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                  )),
                ),
              ],
            ),
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Padding(
              padding: EdgeInsets.only(top: 15, left: 25),
              child: Text(
                'Appoinment For',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
              child: Container(
                  height: 50,
                  width: double.infinity,
                  child: DropdownButtonFormField(
                    items: [],
                    onChanged: ((value) {}),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 158, 153, 153))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 158, 153, 153))),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.black)),
                    ),
                  )),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15, left: 25),
              child: Text(
                'Service',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
              child: Container(
                  height: 50,
                  width: double.infinity,
                  child: DropdownButtonFormField(
                    items: [],
                    onChanged: ((value) {}),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 158, 153, 153))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 158, 153, 153))),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.black)),
                    ),
                  )),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15, left: 25),
              child: Text(
                'Consultant',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
              child: Container(
                  height: 50,
                  width: double.infinity,
                  child: DropdownButtonFormField(
                    items: [],
                    onChanged: ((value) {}),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 158, 153, 153))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 158, 153, 153))),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.black)),
                    ),
                  )),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15, left: 25),
              child: Text(
                'Date',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
              child: TextField(
                style: const TextStyle(height: 1),
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.calendar_month,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                        const BorderSide(color: Colors.redAccent, width: 2.0),
                  ),
                ),
              ),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.all(25),
            child: ElevatedButton(
              onPressed: () {
                Dialogs.materialDialog(context: context, actions: [
                  Center(
                    child: Column(
                      children: const [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/image/correct.jpg'),
                          radius: 60,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Booked!',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'You have successfully booked',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          'an appoinment',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ]);
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 42, 109, 52),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 90, vertical: 10),
                  textStyle: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  )),
              child: const Text(
                'Book Appoinment',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

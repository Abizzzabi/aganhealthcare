import 'package:agan_healthcare_service/doctorprofile.dart';
import 'package:flutter/material.dart';
import 'package:material_dialogs/dialogs.dart';

class Doctors extends StatefulWidget {
  const Doctors({super.key});

  @override
  State<Doctors> createState() => _DoctorsState();
}

class _DoctorsState extends State<Doctors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromRGBO(78, 121, 63, 1),
          leading: TextButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const History()),
                // );
              },
              child: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          title: const Text('DOCTORS', textAlign: TextAlign.center),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.account_circle_outlined,
                  color: Colors.white,
                )),
          ]),
      body: SingleChildScrollView(
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      prefixIcon: const Icon(Icons.search),
                      hintText: 'Search',
                    ),
                  )),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Container(
                        height: 230,
                        width: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromRGBO(255, 255, 255, 1)),
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8, left: 85),
                            child: Container(
                              height: 20,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: const Color.fromRGBO(78, 121, 63, 1)),
                              child: Row(
                                children: const [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 2, left: 5, bottom: 1),
                                      child: Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 12,
                                      )),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 2, bottom: 1, left: 3),
                                    child: Text(
                                      '5.0',
                                      style: TextStyle(
                                          fontSize: 11, color: Colors.white),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: CircleAvatar(
                              radius: 50,
                              backgroundImage:
                                  AssetImage('assets/image/vivian.png'),
                            ),
                          ),
                          const Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                'Dr.Vivian Montooe',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )),
                          const Padding(
                              padding: EdgeInsets.only(top: 7),
                              child: Text(
                                'Pediatric Surgeon',
                                style:
                                    TextStyle(fontSize: 10, color: Colors.grey),
                              )),
                          const Padding(
                              padding: EdgeInsets.only(top: 15),
                              child: Text(
                                '120 Reviews',
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              )),
                        ])),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Container(
                        height: 230,
                        width: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromRGBO(255, 255, 255, 1)),
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8, left: 85),
                            child: Container(
                              height: 20,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: const Color.fromRGBO(78, 121, 63, 1)),
                              child: Row(
                                children: const [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 2, left: 5, bottom: 1),
                                      child: Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 12,
                                      )),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 2, bottom: 1, left: 3),
                                    child: Text(
                                      '5.0',
                                      style: TextStyle(
                                          fontSize: 11, color: Colors.white),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: CircleAvatar(
                              radius: 50,
                              backgroundImage:
                                  AssetImage('assets/image/steve.png'),
                            ),
                          ),
                          const Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                'Dr.Steven Kute',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )),
                          const Padding(
                              padding: EdgeInsets.only(top: 7),
                              child: Text(
                                'Dentician',
                                style:
                                    TextStyle(fontSize: 10, color: Colors.grey),
                              )),
                          const Padding(
                              padding: EdgeInsets.only(top: 15),
                              child: Text(
                                '120 Reviews',
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              )),
                        ])),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Container(
                        height: 230,
                        width: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromRGBO(255, 255, 255, 1)),
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8, left: 85),
                            child: Container(
                              height: 20,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: const Color.fromRGBO(78, 121, 63, 1)),
                              child: Row(
                                children: const [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 2, left: 5, bottom: 1),
                                      child: Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 12,
                                      )),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 2, bottom: 1, left: 3),
                                    child: Text(
                                      '5.0',
                                      style: TextStyle(
                                          fontSize: 11, color: Colors.white),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: CircleAvatar(
                              radius: 50,
                              backgroundImage:
                                  AssetImage('assets/image/travis.png'),
                            ),
                          ),
                          const Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                'Dr.Travis Oman',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )),
                          const Padding(
                              padding: EdgeInsets.only(top: 7),
                              child: Text(
                                'Opthalmologist',
                                style:
                                    TextStyle(fontSize: 10, color: Colors.grey),
                              )),
                          const Padding(
                              padding: EdgeInsets.only(top: 15),
                              child: Text(
                                '120 Reviews',
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              )),
                        ])),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Container(
                        height: 230,
                        width: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromRGBO(255, 255, 255, 1)),
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8, left: 85),
                            child: Container(
                              height: 20,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: const Color.fromRGBO(78, 121, 63, 1)),
                              child: Row(
                                children: const [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 2, left: 5, bottom: 1),
                                      child: Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 12,
                                      )),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 2, bottom: 1, left: 3),
                                    child: Text(
                                      '5.0',
                                      style: TextStyle(
                                          fontSize: 11, color: Colors.white),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: CircleAvatar(
                              radius: 50,
                              backgroundImage:
                                  AssetImage('assets/image/ellan.png'),
                            ),
                          ),
                          const Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                'Dr.Ellen May',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )),
                          const Padding(
                              padding: EdgeInsets.only(top: 7),
                              child: Text(
                                'Neurology',
                                style:
                                    TextStyle(fontSize: 10, color: Colors.grey),
                              )),
                          const Padding(
                              padding: EdgeInsets.only(top: 15),
                              child: Text(
                                '120 Reviews',
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              )),
                        ])),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Container(
                        height: 230,
                        width: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromRGBO(255, 255, 255, 1)),
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8, left: 85),
                            child: Container(
                              height: 20,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: const Color.fromRGBO(78, 121, 63, 1)),
                              child: Row(
                                children: const [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 2, left: 5, bottom: 1),
                                      child: Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 12,
                                      )),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 2, bottom: 1, left: 3),
                                    child: Text(
                                      '5.0',
                                      style: TextStyle(
                                          fontSize: 11, color: Colors.white),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: CircleAvatar(
                              radius: 50,
                              backgroundImage:
                                  AssetImage('assets/image/philmon.png'),
                            ),
                          ),
                          const Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                'Dr.Philimon Youn',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )),
                          const Padding(
                              padding: EdgeInsets.only(top: 7),
                              child: Text(
                                'Surgeon',
                                style:
                                    TextStyle(fontSize: 10, color: Colors.grey),
                              )),
                          const Padding(
                              padding: EdgeInsets.only(top: 15),
                              child: Text(
                                '120 Reviews',
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              )),
                        ])),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: GestureDetector(
                        onTap: () {
                          Dialogs.materialDialog(context: (context), actions: [
                            Container(
                                height: 230,
                                width: 330,
                                child: Column(children: [
                                  Row(children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 5,
                                          ),
                                          child: CircleAvatar(
                                              radius: 50,
                                              backgroundImage: AssetImage(
                                                  'assets/image/doctor.png')),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.only(left: 10, top: 7),
                                          child: Text(
                                            'Dr.Annah Ray',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 11,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(width: 10),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10.0),
                                      child: Container(
                                        height: 130,
                                        width: 1.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 5, left: 20),
                                            child: Text(
                                              'Specaility',
                                              style: TextStyle(
                                                  fontSize: 8,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 0.6)),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 5, left: 20),
                                            child: Text(
                                              'Senior Dentist',
                                              style: TextStyle(
                                                  fontSize: 8,
                                                  color: Colors.black),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 20, left: 20),
                                            child: Text(
                                              'Clinic Name',
                                              style: TextStyle(
                                                  fontSize: 8,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 0.6)),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 5, left: 20),
                                            child: Text(
                                              'Lorem Ipsum ante due locatols',
                                              style: TextStyle(
                                                  fontSize: 8,
                                                  color: Colors.black),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 20, left: 20),
                                            child: Text(
                                              'Experience',
                                              style: TextStyle(
                                                  fontSize: 8,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 0.6)),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 5, left: 20),
                                            child: Text(
                                              '8 years',
                                              style: TextStyle(
                                                  fontSize: 8,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ])
                                  ]),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.all(10),
                                          child: SizedBox(
                                            height: 30,
                                            width: 110,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  primary: Color.fromRGBO(
                                                      95, 141, 78, 1)),
                                              child: Text('View Profile',
                                                  style:
                                                      TextStyle(fontSize: 8)),
                                              onPressed: () {
                                                Navigator.push(context,
                                                   MaterialPageRoute(builder: (context) => const doctorprofile()),
                                                   );
                                              },
                                            ),
                                          )),
                                      Padding(
                                          padding: EdgeInsets.all(10),
                                          child: SizedBox(
                                            height: 30,
                                            width: 110,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  primary: Color.fromRGBO(
                                                      95, 141, 78, 1)),
                                              child: Text('Book Appointment',
                                                  style:
                                                      TextStyle(fontSize: 8)),
                                              onPressed: () {},
                                            ),
                                          ))
                                    ],
                                  )
                                ]))
                          ]);
                        },
                        child: Container(
                            height: 230,
                            width: 160,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromRGBO(255, 255, 255, 1)),
                            child: Column(children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 8, left: 85),
                                child: Container(
                                  height: 20,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color:
                                          const Color.fromRGBO(78, 121, 63, 1)),
                                  child: Row(
                                    children: const [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: 2, left: 5, bottom: 1),
                                          child: Icon(
                                            Icons.star,
                                            color: Colors.white,
                                            size: 12,
                                          )),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 2, bottom: 1, left: 3),
                                        child: Text(
                                          '5.0',
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: Colors.white),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 8),
                                child: CircleAvatar(
                                  radius: 50,
                                  backgroundImage:
                                      AssetImage('assets/image/ann.png'),
                                ),
                              ),
                              const Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Text(
                                    'Dr.Annah Ray',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  )),
                              const Padding(
                                  padding: EdgeInsets.only(top: 7),
                                  child: Text(
                                    'Dentician',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.grey),
                                  )),
                              const Padding(
                                  padding: EdgeInsets.only(top: 15),
                                  child: Text(
                                    '120 Reviews',
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ])),
                      )),
                ],
              )
            ],
          ),
        ),
     ),);}}
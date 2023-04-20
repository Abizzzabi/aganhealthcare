import 'package:agan_healthcare_service/controller/servicecontroller.dart';
import 'package:agan_healthcare_service/history.dart';
import 'package:agan_healthcare_service/models/servicemodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'history.dart';
import 'doctors.dart';
import 'neuralogist.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  late Future<Service> futureAlbum;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ServiceController serviceController = Get.put(ServiceController());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(78, 121, 63, 1),
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Neurologist()),
              );
            },
            icon: Icon(Icons.account_circle_outlined),
          ),
          title: const Text('DASHBOARD', textAlign: TextAlign.center),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.white,
                )),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      height: 200,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(223, 242, 216, 1),
                      ),
                    )),
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: Text('Treatments',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ),

                FutureBuilder<Service>(
                  future: serviceController.fetchAlbum(),
                  builder: (context, AsyncSnapshot<Service> snapshot) {
                    if (snapshot.connectionState == ConnectionState.active ||
                        snapshot.connectionState == ConnectionState.done) {
                      if (snapshot.hasData) {
                        return Padding(
                          padding: EdgeInsets.all(10.0),
                          child: SizedBox(
                            height: 500,
                            child: GridView.builder(
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2),
                              itemBuilder: (context, index) {
                                  return Padding(
                                      padding: EdgeInsets.all(20.0),
                                      child: InkWell(
                                          onTap: () {},
                                          child: Center(
                                            child: Column(
                                              children: [
                                                CircleAvatar(
                                                  radius: 60,
                                                  backgroundColor: Color.fromRGBO(
                                                      223, 242, 216, 1),
                                                  child: CircleAvatar(
                                                    radius: 53,
                                                    backgroundImage:
                                                        NetworkImage(snapshot.data!.data[index].picture),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 5),
                                                  child: Text(
                                                      snapshot.data!.data[index].name, style: const TextStyle(overflow: TextOverflow.ellipsis),),
                                                ),
                                              ],
                                            ),
                                          )));
                              },
                              itemCount: snapshot.data!.data.length,
                            ),
                          ),
                        );
                      } else if (snapshot.hasError) {
                        return Text('${snapshot.error}');
                      }
                    }

                    // By default, show a loading spinner.
                    return const Center(child:  CircularProgressIndicator());
                  },
                ),

                // Padding(
                //     padding: const EdgeInsets.all(15),
                //     child: Container(
                //       height: 200,
                //       width: 350,
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(10),
                //         color: const Color.fromRGBO(223, 242, 216, 1),
                //       ),
                //     )),
                // const Padding(
                //   padding: EdgeInsets.all(20),
                //   child: Text('Treatments',
                //       style: TextStyle(
                //           color: Colors.black,
                //           fontSize: 16,
                //           fontWeight: FontWeight.bold)),
                // ),

                //          Row(children: [
                //           GestureDetector(
                //             onTap: (){},
                //         child:const  CircleAvatar(
                //           radius: 70,
                //           backgroundColor: Color.fromRGBO(223, 242, 216, 1),
                //             child: CircleAvatar(
                //               radius: 60,
                //               backgroundImage: AssetImage('assets/image/cordialogist.png'),
                //             ),
                //           )),const SizedBox(width: 50,),
                //           GestureDetector(
                //             onTap: (){},
                //         child:const  CircleAvatar(
                //           radius: 70,
                //           backgroundColor: Color.fromRGBO(223, 242, 216, 1),
                //             child: CircleAvatar(
                //               radius: 60,
                //               backgroundImage: AssetImage('assets/image/opthalmologist.png'),
                //             ),
                //           ))
                //         ]),

                //         Row(children:const [
                //           Padding(padding: EdgeInsets.only(top:3,left: 40),
                //           child:Text('Cardiologist',style: TextStyle(color: Color.fromRGBO(78, 121, 63, 1),fontSize: 15,fontWeight: FontWeight.bold),) ,
                //           ),
                //           SizedBox(width:90),
                //            Padding(padding: EdgeInsets.only(top:3,),
                //       child:   Text('Opthalmologist',style: TextStyle(color: Color.fromRGBO(78, 121, 63, 1),fontSize: 15,fontWeight: FontWeight.bold),) ,
                //           )  ],),const SizedBox(height: 10,),
                //              Padding(padding: const EdgeInsets.only(top:10,left: 20),
                //         child: Row(children: [
                //           GestureDetector(
                //             onTap: (){},
                //         child:  const CircleAvatar(
                //           radius: 70,
                //           backgroundColor: Color.fromRGBO(223, 242, 216, 1),
                //             child: CircleAvatar(
                //               radius: 60,
                //               backgroundImage: AssetImage('assets/image/ent.png'),
                //             ),
                //           )),const SizedBox(width: 50,),
                //           GestureDetector(
                //             onTap: (){},
                //         child:  const CircleAvatar(
                //           radius: 70,
                //           backgroundColor: Color.fromRGBO(223, 242, 216, 1),
                //             child: CircleAvatar(
                //               radius: 60,
                //               backgroundImage: AssetImage('assets/image/gynaecologist.png'),
                //             ),
                //           ))
                //         ]),
                //         ),
                //         Row(children: const[
                //           Padding(padding: EdgeInsets.only(top:3,left: 80),
                //           child:Text('ENT',style: TextStyle(color: Color.fromRGBO(78, 121, 63, 1),fontSize: 15,fontWeight: FontWeight.bold),) ,
                //           ),
                //           SizedBox(width:130),
                //            Padding(padding: EdgeInsets.only(top:3,),
                //       child:   Text('Gynaecologist',style: TextStyle(color: Color.fromRGBO(78, 121, 63, 1),fontSize: 15,fontWeight: FontWeight.bold),) ,
                //           )  ],),const SizedBox(height: 10,),
                //              Padding(padding: const EdgeInsets.only(top:10,left: 20),
                //         child: Row(children: [
                //           GestureDetector(
                //             onTap: (){},
                //         child:  const CircleAvatar(
                //           radius: 70,
                //           backgroundColor: Color.fromRGBO(223, 242, 216, 1),
                //             child: CircleAvatar(
                //               radius: 60,
                //               backgroundImage: AssetImage('assets/image/diabetologist.png'),
                //             ),
                //           )),const SizedBox(width: 50,),
                //           GestureDetector(
                //             onTap: (){ Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const Neurologist()),
                // );},
                //         child:  const CircleAvatar(
                //           radius: 70,
                //           backgroundColor: Color.fromRGBO(223, 242, 216, 1),
                //             child: CircleAvatar(
                //               radius: 60,
                //               backgroundImage: AssetImage('assets/image/neurologist.png'),
                //             ),
                //           ))
                //         ]),
                //         ),
                //         Row(children:const [
                //           Padding(padding: EdgeInsets.only(top:3,left: 40),
                //           child:Text('Diabetologist',style: TextStyle(color: Color.fromRGBO(78, 121, 63, 1),fontSize: 15,fontWeight: FontWeight.bold),) ,
                //           ),
                //           SizedBox(width:100),
                //            Padding(padding: EdgeInsets.only(top:3,),
                //       child:   Text('Neurologist',style: TextStyle(color: Color.fromRGBO(78, 121, 63, 1),fontSize: 15,fontWeight: FontWeight.bold),) ,
                //           )  ],),
                //           const SizedBox(height: 10,),
                //              Padding(padding: const EdgeInsets.only(top:10,left: 20),
                //         child: Row(children: [
                //           GestureDetector(
                //             onTap: (){},
                //         child:  const CircleAvatar(
                //           radius: 70,
                //           backgroundColor: Color.fromRGBO(223, 242, 216, 1),
                //             child: CircleAvatar(
                //               radius: 60,
                //               backgroundImage: AssetImage('assets/image/dermotologist.png'),
                //             ),
                //           )),const SizedBox(width: 50,),
                //           GestureDetector(
                //             onTap: (){},
                //         child:  const CircleAvatar(
                //           radius: 70,
                //           backgroundColor: Color.fromRGBO(223, 242, 216, 1),
                //             child: CircleAvatar(
                //               radius: 60,
                //               backgroundImage: AssetImage('assets/image/dentist.png'),
                //             ),
                //           ))
                //         ]),
                //         ),
                //         Row(children: const [
                //           Padding(padding: EdgeInsets.only(top:3,left: 40),
                //           child:Text('Dermatologist',style: TextStyle(color: Color.fromRGBO(78, 121, 63, 1),fontSize: 15,fontWeight: FontWeight.bold),) ,
                //           ),
                //           SizedBox(width:100),
                //            Padding(padding: EdgeInsets.only(top:3,),
                //       child:   Text('Dentist',style: TextStyle(color: Color.fromRGBO(78, 121, 63, 1),fontSize: 15,fontWeight: FontWeight.bold),) ,
                //           )  ],),
                //           const SizedBox(height: 10,),
                //              Padding(padding: const EdgeInsets.only(top:10,left: 20),
                //         child: Row(children: [
                //           GestureDetector(
                //             onTap: (){},
                //         child:  const CircleAvatar(
                //           radius: 70,
                //           backgroundColor: Color.fromRGBO(223, 242, 216, 1),
                //             child: CircleAvatar(
                //               radius: 60,
                //               backgroundImage: AssetImage('assets/image/ortho.png'),
                //             ),
                //           )),const SizedBox(width: 50,),
                //           GestureDetector(
                //             onTap: (){},
                //         child:  const CircleAvatar(
                //           radius: 70,
                //           backgroundColor: Color.fromRGBO(223, 242, 216, 1),
                //             child: CircleAvatar(
                //               radius: 60,
                //               backgroundImage: AssetImage('assets/image/paediatrician.png'),
                //             ),
                //           ))
                //         ]),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 3, left: 30),
                      child: Text(
                        'Orthopedic Surgoen',
                        style: TextStyle(
                            color: Color.fromRGBO(78, 121, 63, 1),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(width: 50),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 3,
                      ),
                      child: Text(
                        'Paediatrician',
                        style: TextStyle(
                            color: Color.fromRGBO(78, 121, 63, 1),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          'Your History',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )),
                    Padding(
                      padding: EdgeInsets.only(left: 230),
                      child: Icon(Icons.arrow_forward),
                    )
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.all(20),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const History()),
                          );
                        },
                        child: Card(
                          child: Container(
                            height: 200,
                            width: 320,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromRGBO(78, 121, 63, 1)),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 20, top: 20),
                                      child: CircleAvatar(
                                          radius: 60,
                                          backgroundImage: AssetImage(
                                              'assets/image/doctor.png')),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 30, top: 13),
                                      child: Text(
                                        'Dr.Annah Ray',
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Padding(
                                        padding:
                                            EdgeInsets.only(top: 20, left: 35),
                                        child: Text(
                                          'Date',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 0.6)),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(top: 5, left: 35),
                                        child: Text(
                                          '02/02/2021',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1)),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(top: 30, left: 35),
                                        child: Text(
                                          'Issues',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 0.6)),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(top: 5, left: 35),
                                        child: Text(
                                          'Lorem Ipsum ante due locatols',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1)),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(top: 20, left: 35),
                                        child: Text(
                                          'Time',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 0.6)),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(top: 5, left: 35),
                                        child: Text(
                                          '8.00 pm-9.00 pm',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1)),
                                        ),
                                      ),
                                    ])
                              ],
                            ),
                          ),
                        ))),
              ],
            ),
          ),
        ));
  }
}

class _MenuItem {
  final String title;

  _MenuItem({required this.title});
}

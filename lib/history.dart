import 'package:agan_healthcare_service/models/historymodels.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'controller/historycontroller.dart';
import 'dashboard.dart';
import 'doctors.dart';

class Historymodel extends StatefulWidget {
  const Historymodel({super.key, required this.id});
  
   final String id;

  @override
  State<Historymodel> createState() => _HistorymodelState();
}

class _HistorymodelState extends State<Historymodel> {
  late Future<Historymodel> futureAlbum;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final HistoryController historyController = Get.put(HistoryController());
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromRGBO(78, 121, 63, 1),
          leading: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Doctors(
                            id: '',
                          )),
                );
              },
              child: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          title: const Text('HISTORY', textAlign: TextAlign.center),
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
        child: FutureBuilder<History>(
          future: historyController.fetchAlbum(widget.id),
          builder: (context, AsyncSnapshot<History> snapshot) {
            if (snapshot.connectionState == ConnectionState.active ||
                snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasData) {
                print(snapshot.data!.msg.toString());
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                      height: 500,
                      child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          primary: true,
                          shrinkWrap: true,
                          itemBuilder: ((context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: InkWell(
                                onTap: (() async {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Doctors(
                                            id: snapshot.data!.data[index].id)),
                                  );
                                }),

                                child: Container(
                                  height: 200,
                                  width: 330,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color:
                                          const Color.fromRGBO(78, 121, 63, 1)),
                                  child:  Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                       const  Padding(
                                            padding: EdgeInsets.only(
                                                left: 20, top: 20),
                                            child: CircleAvatar(
                                                radius: 60,
                                                backgroundImage: AssetImage(
                                                    'assets/doctor.png')),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 30, top: 13),
                                            child: Text(
                                               snapshot
                                                      .data!.data[index].doctor,
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
                                          children: [
                                           const  Padding(
                                              padding: EdgeInsets.only(
                                                  top: 15, left: 35),
                                              child: Text(
                                                'Employee Name',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 0.6)),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: 5, left: 35),
                                              child: Text(
                                                snapshot
                                                      .data!.data[index].empEname,
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 1)),
                                              ),
                                            ),
                                          const   Padding(
                                              padding: EdgeInsets.only(
                                                  top: 15, left: 35),
                                              child: Text(
                                                'Date',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 0.6)),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: 5, left: 35),
                                              child: Text(
                                                snapshot
                                                      .data!.data[index].date.toString(),
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 1)),
                                              ),
                                            ),
                                         const   Padding(
                                              padding: EdgeInsets.only(
                                                  top: 15, left: 35),
                                              child: Text(
                                                'Service',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 0.6)),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: 5, left: 35),
                                              child: Text(
                                                 snapshot
                                                      .data!.data[index].service,
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 1)),
                                              ),
                                            ),
                                          const  Padding(
                                              padding: EdgeInsets.only(
                                                  top: 15, left: 35),
                                              child: Text(
                                                'Appoinment For',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 0.6)),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: 5, left: 35),
                                              child: Text(
                                                 snapshot
                                                      .data!.data[index].appointmentFor,
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
           
                              ),
                            );
                           // itemCount: snapshot.data!.data.length;
                          }))),
                );
              }
              else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
            }

            // By default, show a loading spinner.
            return const Center(child: CircularProgressIndicator());
          },
        ),
       
      ),
    );
  }
}

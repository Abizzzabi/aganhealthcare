import 'package:agan_healthcare_service/Appoinment.dart';
import 'package:agan_healthcare_service/controller/profilecontroller.dart';
import 'package:agan_healthcare_service/offers.dart';
import 'package:flutter/material.dart';
import 'package:agan_healthcare_service/login1.dart';
import 'package:get/get.dart';

import 'models/profilemodels.dart';

class doctorprofile extends StatefulWidget {
  const doctorprofile({super.key, required this.id1});
  final String id1;

  @override
  State<doctorprofile> createState() => _doctorprofileState();
}

class _doctorprofileState extends State<doctorprofile> {
  final ProfileController profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 42, 109, 52),
          toolbarHeight: 50,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: (() {
              Navigator.pop(context);
            }),
          ),
          title: const Text(
            'DOCTOR PROFILE',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          centerTitle: true,
          actions: [
            TextButton(
              child: const Icon(
                Icons.notifications,
                size: 30,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            TextButton(
              child: const Icon(Icons.account_circle_outlined,
                  size: 30, color: Colors.white),
              onPressed: () {},
            )
          ],
        ),
        body: SingleChildScrollView(
          child: FutureBuilder<Profile>(
            future: profileController.fetchAlbum(widget.id1.toString()),
            builder: (context, AsyncSnapshot<Profile> snapshot) {
              if (snapshot.connectionState == ConnectionState.active ||
                  snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(top: 10, left: 15),
                          child: CircleAvatar(
                            backgroundImage:
                                NetworkImage(snapshot.data!.data.picture),
                            radius: 90,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 10),
                        child: ListTile(
                          title: Text(
                            snapshot.data!.data.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: const Text(
                              'Specialist of implants and cosmetic dentistry'),
                        ),
                      ),
                      // Padding(padding: EdgeInsets.all(8),
                      // child: Text('Dr.Annah Ray', style: TextStyle(fontWeight: FontWeight.bold),),
                      // )
                      Padding(
                        padding: EdgeInsets.only(top: 15, left: 10),
                        child: ListTile(
                            title: Text(
                              'Clinic Name',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(snapshot.data!.data.clinicName)),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 15, left: 10),
                        child: ListTile(
                          title: Text(
                            'Clinic Address',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(snapshot.data!.data.clinicAddress),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15, left: 10),
                        child: ListTile(
                          title: Text(
                            'Specialities',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                              snapshot.data!.data.modeOfConsultant.toString()),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15, left: 10),
                        child: ListTile(
                          title: Text(
                            'Qualification',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(snapshot.data!.data.qualification),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15, left: 10),
                        child: ListTile(
                          title: Text(
                            'Available Time',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(snapshot.data!.data.availableTime),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10, left: 10),
                        child: ListTile(
                          title: Text(
                            'Clinic',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          //subtitle: Text('7.30 pm to 10.00 pm'),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 15,),),
                      Container(
                        height: 200,
                        child: Card(
                          child: Image.network(snapshot.data!.data.picture,
                          fit: BoxFit.fill,
                          ),
                           shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
                        ),
                      ),
                      // Container(
                      //   width: double.infinity,
                      //   height: 200,
                      //   margin: const EdgeInsets.only(left: 15, right: 15),
                        
                      // ),

                      Padding(
                        padding: EdgeInsets.only(top: 20, left: 10),
                        child: ListTile(
                          title: Text(
                            'About',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(snapshot.data!.data.aboutus),
                        ),
                      ),
                    ],
                  );
                }
              }
              return const Center(child: CircularProgressIndicator());
            },
          ),
        )
        );
  }
}

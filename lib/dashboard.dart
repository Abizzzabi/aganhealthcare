import 'package:agan_healthcare_service/Appoinment.dart';
import 'package:agan_healthcare_service/controller/dentcontroller.dart';
import 'package:agan_healthcare_service/controller/servicecontroller.dart';
import 'package:agan_healthcare_service/history.dart';
import 'package:agan_healthcare_service/login1.dart';
import 'package:agan_healthcare_service/models/adsmodel.dart';
import 'package:agan_healthcare_service/models/servicemodel.dart';
import 'package:agan_healthcare_service/patientprofile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/adscontroller.dart';
import 'neuralogist.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
    final DentistController dentistController = Get.put(DentistController());
    final AdsController adsController = Get.put(AdsController());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(78, 121, 63, 1),
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Patientprofile()),
              );
            },
            icon: const Icon(Icons.account_circle_outlined),
          ),
          title: const Text('DASHBOARD', textAlign: TextAlign.center),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Appoinment()),
                  );
                },
                icon: Icon(
                  Icons.calendar_month_outlined,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Login()),
                  );
                },
                icon: Icon(
                  Icons.logout,
                  color: Colors.white,
                )),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FutureBuilder<Ads>(
                  future: adsController.fetchAlbum(),
                  builder: (context, AsyncSnapshot<Ads> snapshot) {
                    if (snapshot.connectionState == ConnectionState.active ||
                        snapshot.connectionState == ConnectionState.done) {
                      if (snapshot.hasData) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Column(
                              children: [
                                Center(
                                    child: CarouselSlider.builder(
                                  itemBuilder: ((context, index, realIndex) {
                                    return Container(
                                      margin: EdgeInsets.all(6.0),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        image: DecorationImage(
                                          image: NetworkImage(snapshot
                                              .data!.data[index].picture),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    );
                                  }),
                                  options: CarouselOptions(
                                    height: 180.0,
                                    enlargeCenterPage: false,
                                    autoPlay: true,
                                    aspectRatio: 16 / 9,
                                    autoPlayCurve:
                                        Curves.fastLinearToSlowEaseIn,
                                    enableInfiniteScroll: true,
                                    autoPlayAnimationDuration:
                                        Duration(milliseconds: 800),
                                    viewportFraction: 0.8,
                                  ),
                                  itemCount: snapshot.data!.data.length,
                                )),
                              ],
                            ),
                          ),
                        );
                      } else if (snapshot.hasError) {
                        return Text('${snapshot.error}');
                      }
                    }

                    // By default, show a loading spinner.
                    return const Center(child: CircularProgressIndicator());
                  },
                ),
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
                          padding: const EdgeInsets.all(10.0),
                          child: SizedBox(
                            height: 500,
                            child: GridView.builder(
                              shrinkWrap: true,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2),
                              itemBuilder: (context, index) {
                                return Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: InkWell(
                                        onTap: () async {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Neurologist(
                                                        id: snapshot.data!
                                                            .data[index].id)),
                                          );
                                        },
                                        child: Center(
                                          child: Column(
                                            children: [
                                              CircleAvatar(
                                                radius: 60,
                                                backgroundColor:
                                                    const Color.fromRGBO(
                                                        223, 242, 216, 1),
                                                child: CircleAvatar(
                                                  radius: 53,
                                                  backgroundImage: NetworkImage(
                                                      snapshot.data!.data[index]
                                                          .picture),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5),
                                                child: Text(
                                                  snapshot
                                                      .data!.data[index].name,
                                                  style: const TextStyle(
                                                      overflow: TextOverflow
                                                          .ellipsis),
                                                ),
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
                    return const Center(child: CircularProgressIndicator());
                  },
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
                                          backgroundImage:
                                              AssetImage('assets/doctor.png')),
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

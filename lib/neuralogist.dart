
import 'package:agan_healthcare_service/doctorprofile.dart';
import 'package:agan_healthcare_service/globals.dart';
import 'package:agan_healthcare_service/models/dnetistmodels.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:agan_healthcare_service/controller/dentcontroller.dart';
class Neurologist extends StatefulWidget {
  const Neurologist({super.key, required this.id, });

  final String id;
  
  

  @override
  State<Neurologist> createState() => _NeurologistState();
}

class _NeurologistState extends State<Neurologist> {
  final DentistController dentistController = Get.put(DentistController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor:const Color.fromRGBO(78, 121, 63, 1),
       leading:TextButton(onPressed: (){
         Navigator.pop(context);
       }, 
       child: const Icon(Icons.arrow_back,color: Colors.white,)),
       title:const Text('DOCTORS LIST', textAlign: TextAlign.center),
       centerTitle: true,
       actions: [
        IconButton(onPressed: (){}, icon: const Icon(Icons.notifications,color: Colors.white,)),
        IconButton(onPressed: (){}, icon: const Icon(Icons.account_circle_outlined,color: Colors.white,)),
       ]),
      body: SingleChildScrollView(
        // ignore: avoid_unnecessary_containers
        child: Container(child: Column(
          children: [
          Padding(padding: const EdgeInsets.only(top: 20,left: 20,right: 20),child:  TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          prefixIcon: const Icon(Icons.search),
          hintText: 'Search',
         
          ),
          
          )),
           FutureBuilder<Dentist>(
                  future: dentistController.fetchAlbum(widget.id.toString()),
                  builder: (context, AsyncSnapshot<Dentist> snapshot) {
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
                                                builder: (context) => doctorprofile(id1: snapshot.data!.data[index].id,)),
                                          );
                                        },
                                        child: Center(
                                          child: Column(
                                            children: [
                                              CircleAvatar(
                                                radius: 60,
                                                backgroundColor: const Color.fromRGBO(
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
                                               Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5),
                                                child: Text(
                                                  snapshot
                                                      .data!.data[index].availableTime,
                                                  style: const TextStyle(
                                                      overflow: TextOverflow
                                                          .ellipsis),
                                                ),
                                              ),
                                               Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5),
                                                child: Text(
                                                  snapshot
                                                      .data!.data[index].clinicName,
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
         
          ],
        ),),
     ),);}}
import 'package:flutter/material.dart';

import 'dashboard.dart';
import 'doctors.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(78, 121, 63, 1),
          leading: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Doctors()),
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
            child: Column(
              children: [
                  Padding(padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
          child:GestureDetector(
            onTap: (){
              Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Doctors()),
  );
            },
         
            child: Container(height: 200,width: 330,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            color: const Color.fromRGBO(78, 121, 63, 1)),
            child:Row(children: [
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
              Padding(padding: EdgeInsets.only(left: 20,top: 20),
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/image/doctor.png')),
              ),
              Padding(padding: EdgeInsets.only(left: 30,top: 13),
              child: Text('Dr.Annah Ray',style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1),fontSize: 15,fontWeight: FontWeight.bold),),
              )
            ],    
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:const [
                Padding(padding: EdgeInsets.only(top:20,left: 35),
              child:   Text('Date',style: TextStyle(fontSize: 10,color: Color.fromRGBO(255, 255, 255, 0.6)),),
                ),
                Padding(padding: EdgeInsets.only(top:5,left: 35),
              child:   Text('02/02/2021',style: TextStyle(fontSize: 10,color: Color.fromRGBO(255, 255, 255, 1)),),
                ),
                 Padding(padding: EdgeInsets.only(top:30,left: 35),
              child:   Text('Issues',style: TextStyle(fontSize: 10,color: Color.fromRGBO(255, 255, 255, 0.6)),),
                ),
                Padding(padding: EdgeInsets.only(top:5,left: 35),
              child:   Text('Lorem Ipsum ante due locatols',style: TextStyle(fontSize: 10,color: Color.fromRGBO(255, 255, 255, 1)),),
                ),
                 Padding(padding: EdgeInsets.only(top:20,left: 35),
              child:   Text('Time',style: TextStyle(fontSize: 10,color: Color.fromRGBO(255, 255, 255, 0.6)),),
                ),
                Padding(padding: EdgeInsets.only(top:5,left: 35),
              child:   Text('8.00 pm-9.00 pm',style: TextStyle(fontSize: 10,color: Color.fromRGBO(255, 255, 255, 1)),),
                ),
              ]
            )
            ],),

            ),),
           ) ,
               Padding(padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
               
            child: Container(height: 200,width: 330,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            color: const Color.fromRGBO(78, 121, 63, 1)),
            child:Row(children: [
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
              Padding(padding: EdgeInsets.only(left: 20,top: 20),
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/image/doctor.png')),
              ),
              Padding(padding: EdgeInsets.only(left: 30,top: 13),
              child: Text('Dr.Annah Ray',style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1),fontSize: 15,fontWeight: FontWeight.bold),),
              )
            ],    
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:const [
                Padding(padding: EdgeInsets.only(top:20,left: 35),
              child:   Text('Date',style: TextStyle(fontSize: 10,color: Color.fromRGBO(255, 255, 255, 0.6)),),
                ),
                Padding(padding: EdgeInsets.only(top:5,left: 35),
              child:   Text('02/02/2021',style: TextStyle(fontSize: 10,color: Color.fromRGBO(255, 255, 255, 1)),),
                ),
                 Padding(padding: EdgeInsets.only(top:30,left: 35),
              child:   Text('Issues',style: TextStyle(fontSize: 10,color: Color.fromRGBO(255, 255, 255, 0.6)),),
                ),
                Padding(padding: EdgeInsets.only(top:5,left: 35),
              child:   Text('Lorem Ipsum ante due locatols',style: TextStyle(fontSize: 10,color: Color.fromRGBO(255, 255, 255, 1)),),
                ),
                 Padding(padding: EdgeInsets.only(top:20,left: 35),
              child:   Text('Time',style: TextStyle(fontSize: 10,color: Color.fromRGBO(255, 255, 255, 0.6)),),
                ),
                Padding(padding: EdgeInsets.only(top:5,left: 35),
              child:   Text('8.00 pm-9.00 pm',style: TextStyle(fontSize: 10,color: Color.fromRGBO(255, 255, 255, 1)),),
                ),
              ]
            )
            ],),

            ),),
              
              
               Padding(padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
             
            child: Container(height: 200,width: 330,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            color: const Color.fromRGBO(78, 121, 63, 1)),
            child:Row(children: [
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
              Padding(padding: EdgeInsets.only(left: 20,top: 20),
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/image/doctor.png')),
              ),
              Padding(padding: EdgeInsets.only(left: 30,top: 13),
              child: Text('Dr.Annah Ray',style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1),fontSize: 15,fontWeight: FontWeight.bold),),
              )
            ],    
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:const [
                Padding(padding: EdgeInsets.only(top:20,left: 35),
              child:   Text('Date',style: TextStyle(fontSize: 10,color: Color.fromRGBO(255, 255, 255, 0.6)),),
                ),
                Padding(padding: EdgeInsets.only(top:5,left: 35),
              child:   Text('02/02/2021',style: TextStyle(fontSize: 10,color: Color.fromRGBO(255, 255, 255, 1)),),
                ),
                 Padding(padding: EdgeInsets.only(top:30,left: 35),
              child:   Text('Issues',style: TextStyle(fontSize: 10,color: Color.fromRGBO(255, 255, 255, 0.6)),),
                ),
                Padding(padding: EdgeInsets.only(top:5,left: 35),
              child:   Text('Lorem Ipsum ante due locatols',style: TextStyle(fontSize: 10,color: Color.fromRGBO(255, 255, 255, 1)),),
                ),
                 Padding(padding: EdgeInsets.only(top:20,left: 35),
              child:   Text('Time',style: TextStyle(fontSize: 10,color: Color.fromRGBO(255, 255, 255, 0.6)),),
                ),
                Padding(padding: EdgeInsets.only(top:5,left: 35),
              child:   Text('8.00 pm-9.00 pm',style: TextStyle(fontSize: 10,color: Color.fromRGBO(255, 255, 255, 1)),),
                ),
              ]
            )
            ],),

            ),),
            
               
               Padding(padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
              
            child: Container(height: 200,width: 330,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            color: const Color.fromRGBO(78, 121, 63, 1)),
            child:Row(children: [
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
              Padding(padding: EdgeInsets.only(left: 20,top: 20),
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/image/doctor.png')),
              ),
              Padding(padding: EdgeInsets.only(left: 30,top: 13),
              child: Text('Dr.Annah Ray',style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1),fontSize: 15,fontWeight: FontWeight.bold),),
              )
            ],    
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:const [
                Padding(padding: EdgeInsets.only(top:20,left: 35),
              child:   Text('Date',style: TextStyle(fontSize: 10,color: Color.fromRGBO(255, 255, 255, 0.6)),),
                ),
                Padding(padding: EdgeInsets.only(top:5,left: 35),
              child:   Text('02/02/2021',style: TextStyle(fontSize: 10,color: Color.fromRGBO(255, 255, 255, 1)),),
                ),
                 Padding(padding: EdgeInsets.only(top:30,left: 35),
              child:   Text('Issues',style: TextStyle(fontSize: 10,color: Color.fromRGBO(255, 255, 255, 0.6)),),
                ),
                Padding(padding: EdgeInsets.only(top:5,left: 35),
              child:   Text('Lorem Ipsum ante due locatols',style: TextStyle(fontSize: 10,color: Color.fromRGBO(255, 255, 255, 1)),),
                ),
                 Padding(padding: EdgeInsets.only(top:20,left: 35),
              child:   Text('Time',style: TextStyle(fontSize: 10,color: Color.fromRGBO(255, 255, 255, 0.6)),),
                ),
                Padding(padding: EdgeInsets.only(top:5,left: 35),
              child:   Text('8.00 pm-9.00 pm',style: TextStyle(fontSize: 10,color: Color.fromRGBO(255, 255, 255, 1)),),
                ),
              ]
            )
            ],),

            ),),
               

              ],
            ),
         ),);}}
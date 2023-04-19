
import 'package:flutter/material.dart';

class Neurologist extends StatefulWidget {
  const Neurologist({super.key});

  @override
  State<Neurologist> createState() => _NeurologistState();
}

class _NeurologistState extends State<Neurologist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor:const Color.fromRGBO(78, 121, 63, 1),
       leading:TextButton(onPressed: (){}, 
       child: const Icon(Icons.arrow_back,color: Colors.white,)),
       title:const Text('NEUROLOGIST', textAlign: TextAlign.center),
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
          Row(children: [
            Padding(padding: const EdgeInsets.only(top:20,left: 20),
            child: Container(height: 190,width: 160,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:const Color.fromRGBO(255, 255, 255, 1)),
              child:Column(children: const [  Padding(padding: EdgeInsets.only(top: 20),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/image/vivian.png'),
              ),
              ),Padding(padding: EdgeInsets.only(top: 5),
             child: Text('Dr.Vivian Montooe',style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),)),
             Padding(padding: EdgeInsets.only(top: 7),
             child: Text('Pediatric Surgeon',style: TextStyle(fontSize: 10,color: Colors.grey),)),
              ])
            ),
            ),
             Padding(padding: const EdgeInsets.only(top:20,left: 20),
            child: Container(height: 190,width: 160,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:const Color.fromRGBO(255, 255, 255, 1)),
              child:Column(children: const [ Padding(padding: EdgeInsets.only(top: 20),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/image/steve.png'),
              ),
              ),
              Padding(padding: EdgeInsets.only(top: 5),
             child: Text('Dr.Steven Kute',style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),)),
             Padding(padding: EdgeInsets.only(top: 7),
             child: Text('Dentician',style: TextStyle(fontSize: 10,color: Colors.grey),)),
              
              ])
            ),
            ),
          ],),
           Row(children: [
            Padding(padding: const EdgeInsets.only(top:20,left: 20),
            child: Container(height: 190,width: 160,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:const Color.fromRGBO(255, 255, 255, 1)),
              child:Column(children: const [ Padding(padding: EdgeInsets.only(top: 20),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/image/travis.png'),
              ),
              ),Padding(padding: EdgeInsets.only(top: 5),
             child: Text('Dr.Travis Oman',style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),)),
             Padding(padding: EdgeInsets.only(top: 7),
             child: Text('Opthalmologist',style: TextStyle(fontSize: 10,color: Colors.grey),)),
              ])
            ),
            ),
             Padding(padding: const EdgeInsets.only(top:20,left: 20),
            child: Container(height: 190,width: 160,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:const Color.fromRGBO(255, 255, 255, 1)),
              child:Column(children: const [ Padding(padding: EdgeInsets.only(top: 20),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/image/ellan.png'),
              ),
              ),
              Padding(padding: EdgeInsets.only(top: 5),
             child: Text('Dr.Ellen May',style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),)),
             Padding(padding: EdgeInsets.only(top: 7),
             child: Text('Neurology',style: TextStyle(fontSize: 10,color: Colors.grey),)),
              
              ])
            ),
            ),
          ],),
           Row(children: [
            Padding(padding: const EdgeInsets.only(top:20,left: 20),
            child: Container(height: 190,width: 160,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:const Color.fromRGBO(255, 255, 255, 1)),
              child:Column(children: const [ Padding(padding: EdgeInsets.only(top: 20),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/image/philmon.png'),
              ),
              ),Padding(padding: EdgeInsets.only(top: 5),
             child: Text('Dr.Philimon Youn',style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),)),
             Padding(padding: EdgeInsets.only(top: 7),
             child: Text('Surgeon',style: TextStyle(fontSize: 10,color: Colors.grey),)),
              ])
            ),
            ),
             Padding(padding: const EdgeInsets.only(top:20,left: 20),
            child: Container(height: 190,width: 160,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:const Color.fromRGBO(255, 255, 255, 1)),
              child:Column(children: const [ Padding(padding: EdgeInsets.only(top: 20),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/image/ann.png'),
              ),
              ),
              Padding(padding: EdgeInsets.only(top: 5),
             child: Text('Dr.Annah Ray',style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),)),
             Padding(padding: EdgeInsets.only(top: 7),
             child: Text('Dentician',style: TextStyle(fontSize: 10,color: Colors.grey),)),
              
              ])
            ),
            ),
          ],)
          ],
        ),),
     ),);}}
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List doctors=[];

  CollectionReference usersref=FirebaseFirestore.instance.collection("Doctors");

  getData()async{
    var responsebody=await usersref.get();
    responsebody.docs.forEach((element) {
      setState(() {
        doctors.add(element.data());
      });

    });
    print(doctors);
  }
  @override
  void initState() {
    getData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
          title: Center(child: Text("Profile",
            style: TextStyle(color: Colors.black,fontSize:30,fontWeight: FontWeight.bold ),))),
      backgroundColor:Colors.indigo[50],
      // backgroundColor:Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(margin: EdgeInsets.only(left: 20,top: 3,right: 10),),
            SizedBox(height: 10,),
            CircleAvatar(
              radius: 60,
              backgroundImage:NetworkImage(
                  'https://thevideoink.com/wp-content/uploads/2021/11/wysiwyg-uploads_1569586526901-doctor.jpg'),
            ),
            Center(child: Text("Dr.${doctors[0]['name']}",style: TextStyle(color: Colors.black,fontSize:15,fontWeight: FontWeight.bold )),
            ),

            Container(
                width: 370 ,
                height: 83,
                child: Card(child:Column(children: [ListTile(
                  title: Text("Hi,"),
                  subtitle: Text("My name is Dr. Mohamed Ali, I am 46 years old , "
                      "I graduated from the Faculty of Medicine , Cairo University in 2014, I specialized in the interior"
                      " "),
                )

                ],),)

            ),
            SizedBox(height:2),

            Row(children: [

              Container(
                  width: 150 ,
                  height: 80,
                  margin: EdgeInsets.only(left: 10),
                  child:Card(
                      color: Colors.blue[600],
                      child: Column(children: [ListTile(
                        title:Center(child: Text("+20",style: TextStyle(color: Colors.black,fontSize:23,fontWeight: FontWeight.bold )) ),
                        subtitle:Center(child: Text("Reviews",style: TextStyle(color: Colors.black,fontSize:17,fontWeight: FontWeight.bold )) ),
                      )],) )),

              Container(
                  width: 170,
                  height: 80,
                  margin: EdgeInsets.only(left:25),
                  child:Card(
                      color: Colors.blue[600],
                      child: Column(children: [ListTile(
                        title:Center(child: Text("+55",style: TextStyle(color: Colors.black,fontSize:23,fontWeight: FontWeight.bold )) ),
                        subtitle:Center(child: Text("Patients",style: TextStyle(color: Colors.black,fontSize:17,fontWeight: FontWeight.bold )) ),
                      )],) )),
            ],),
            Container(
                child: ListTile( title: Text("Patient analytics",style: TextStyle(color: Colors.black,fontSize:23,fontWeight: FontWeight.bold )),)),
            Row(children: [

              Container(
                  width: 120 ,
                  height: 80,
                  margin: EdgeInsets.only(left: 10),
                  child:Card(
                      color: Colors.blue[600],
                      child: Column(children: [ListTile(
                        title:Center(child: Text("Appointments Today",style: TextStyle(color: Colors.black,fontSize:10,fontWeight: FontWeight.bold )) ),
                        subtitle:Center(child: Text("10 Appointment",style: TextStyle(color: Colors.black,fontSize:9,fontWeight: FontWeight.bold )) ),
                      )],) )),

              Container(
                  width: 100,
                  height: 80,
                  margin: EdgeInsets.only(left: 15),
                  child:Card(
                      color: Colors.blue[600],
                      child: Column(children: [ListTile(
                        title:Center(child: Text("New Patients",style: TextStyle(color: Colors.black,fontSize:12,fontWeight: FontWeight.bold )) ),
                        subtitle:Center(child: Text("15 Patients",style: TextStyle(color: Colors.black,fontSize:10,fontWeight: FontWeight.bold )) ),

                      )],) )),
              Container(
                  width: 90 ,
                  height: 80,
                  margin: EdgeInsets.only(left: 15),
                  child:Card(
                      color: Colors.blue[600],
                      child: Column(children: [ListTile(
                        title:Center(child: Text("Total Patients",style: TextStyle(color: Colors.black,fontSize:12,fontWeight: FontWeight.bold )) ),
                        subtitle:Center(child: Text("25 Patients",style: TextStyle(color: Colors.black,fontSize:10,fontWeight: FontWeight.bold )) ),
                      )],) )),

            ],),

            SizedBox(height:2),
            Container(
                child: ListTile( title: Text("Next Events",style: TextStyle(color: Colors.black,fontSize:23,fontWeight: FontWeight.bold )),)),

            Container(
                width: 370 ,
                height: 80,
                child: Card(child:Column(children: [ListTile(
                  leading: Icon(Icons.calendar_month_outlined,color: Colors.blue[600]),
                  title: Text("Medical Conference"),
                  subtitle: Text("May 12 - 10:00 AM"),
                )

                ],),)

            ),
            Container(
                width: 370 ,
                height: 80,
                child: Card(child:Column(children: [ListTile(
                  leading: Icon(Icons.calendar_today_sharp,color: Colors.blue[600]),
                  title: Text("visit to new hospital"),
                  subtitle: Text(" sunday  - 10:00 AM"),
                )

                ],),)

            ),
          ],),
      ),






    );
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:curved_progress_bar/curved_progress_bar.dart';
import 'package:first_day_flutter/AdminProfile.dart';
import 'package:first_day_flutter/layout/home_layout.dart';
import 'package:first_day_flutter/patients.dart';
import 'package:flutter/material.dart';

class DA extends StatefulWidget {
  const DA({Key? key}) : super(key: key);

  @override
  State<DA> createState() => _DAState();
}

class _DAState extends State<DA> {
  List users=[];
  CollectionReference usersref=FirebaseFirestore.instance.collection("users");
  getData()async{
    var responsebody=await usersref.get();
    responsebody.docs.forEach((element) {
      setState(() {
        users.add(element.data());
      });

    });
    print(users);
  }
  @override
  void initState() {
    getData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffd3d3d3),
        appBar: AppBar(
          title: Center(
              child: Text("Weekly Report Of Doaa ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black))),
          backgroundColor: Colors.white,
          leading: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AdminProf()),
                );
              },
              child: Text(
                "Back",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              )),

        ),
        body: Center(
          child: Container(
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Column(
                  children: <Widget>[
                    //Row
                    Container(
                      width: 350,
                      height: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white
                      ), child:
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text('Weekly Activity',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Stack(
                                children: [
                                  SizedBox(width: 70,height: 60,child: CurvedCircularProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(Colors.blue),value: .5,strokeWidth: 8,backgroundColor: Colors.grey[400],)),
                                  Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Column(
                                      children: [
                                        Text('10,350'),
                                        Text('Steps'),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),SizedBox(width: 12,),

                            Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Stack(
                                children: [
                                  SizedBox(width: 80,height: 60,child: CurvedCircularProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(Colors.amber),value: .8,strokeWidth: 8,backgroundColor: Colors.grey[400],)),
                                  Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Column(
                                      children: [
                                        Text('10.14L'),
                                        Text('20 Cups'),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),SizedBox(width: 9,)
                            , Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Stack(
                                children: [
                                  SizedBox(width: 70,height: 60,child: CurvedCircularProgressIndicator( valueColor: new AlwaysStoppedAnimation<Color>(Colors.pink),value: .8,strokeWidth: 8,backgroundColor: Colors.grey[400],)),
                                  Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Column(
                                      children: [
                                        Text('3'),
                                        Text('Hours'),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:19.0,),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 10.0,
                                    backgroundImage: NetworkImage('https://www.essent.com/SiteData/SiteID34/Images/Functionality-Pages/Quotes-StepsB.png'),
                                  ),SizedBox(width: 7,)
                                  ,Text('Steps',style: TextStyle(fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),SizedBox(width: 45,),
                            Row(
                              children: [
                                Icon(Icons.water_drop_rounded,color: Colors.blue,)
                                ,SizedBox(width: 5,)
                                ,Text('Water',style: TextStyle(fontWeight: FontWeight.bold),),
                              ],
                            ),SizedBox(width: 34,),
                            Row(
                              children: [
                                Icon(Icons.fitness_center_sharp,color: Colors.blue,),
                                Text(
                                  'Training',
                                  style: TextStyle(
                                      fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),//BoxDecoration
                    ),
                    SizedBox(height: 25,),
                    Expanded(
                      child: Container(
                        width: 350,
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Goal',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),

                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:2,left:10),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 10.0,
                                    backgroundImage: NetworkImage('https://www.essent.com/SiteData/SiteID34/Images/Functionality-Pages/Quotes-StepsB.png'),
                                  ),SizedBox(width: 7,)
                                  ,Text('Steps',style: TextStyle(fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                            SizedBox(height: 15,),
                            Container(
                                padding: EdgeInsets.only(left: 20,right: 20),
                                alignment: Alignment.topCenter,
                                child: CurvedLinearProgressIndicator(
                                  strokeWidth: 25,
                                  value: 0.8,
                                  backgroundColor: Colors.grey,
                                  color: Colors.blue,
                                  minHeight: 8,
                                )
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(width:10 ,),
                                  Text('0',style: TextStyle(fontSize: 8),),SizedBox(width:180 ,),
                                  Text('10350',style: TextStyle(fontSize: 8),),SizedBox(width:60 ,),
                                  Text('14000',style: TextStyle(fontSize: 8),),

                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:2,left:10),
                              child: Row(
                                children: [
                                  Icon(Icons.bedtime,color: Colors.blue,),SizedBox(width: 7,)
                                  ,Text('Sleep',style: TextStyle(fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                            SizedBox(height: 15,),
                            Container(
                                padding: EdgeInsets.only(left: 20,right: 20),
                                alignment: Alignment.topCenter,
                                child: CurvedLinearProgressIndicator(
                                  strokeWidth: 25,
                                  valueColor: new AlwaysStoppedAnimation<Color>(Colors.amber),
                                  value: 0.4,
                                  backgroundColor: Colors.grey,
                                  color: Colors.blue,
                                  minHeight: 8,
                                )
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(width:10 ,),
                                  Text('0',style: TextStyle(fontSize: 8),),SizedBox(width:180 ,),
                                  Text('5.5h',style: TextStyle(fontSize: 8),),SizedBox(width:80 ,),
                                  Text('8h',style: TextStyle(fontSize: 8),),

                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:2,left:10),
                              child: Row(
                                children: [
                                  Icon(Icons.water_drop_rounded,color: Colors.blue,),SizedBox(width: 7,)
                                  ,Text('Water',style: TextStyle(fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                            SizedBox(height: 15,),
                            Container(
                                padding: EdgeInsets.only(left: 20,right: 20),
                                alignment: Alignment.topCenter,
                                child: CurvedLinearProgressIndicator(
                                  strokeWidth: 25,
                                  valueColor: new AlwaysStoppedAnimation<Color>(Colors.amber),
                                  value: 0.9,
                                  backgroundColor: Colors.grey,
                                  color: Colors.blue,
                                  minHeight: 8,
                                )
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(width:10 ,),
                                  Text('0',style: TextStyle(fontSize: 8),),SizedBox(width:180 ,),
                                  Text('10.14L',style: TextStyle(fontSize: 8),),SizedBox(width:70 ,),
                                  Text('20L',style: TextStyle(fontSize: 8),),

                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:2,left:10),
                              child: Row(
                                children: [
                                  Icon(Icons.fitness_center_sharp,color: Colors.blue,),SizedBox(width: 7,)
                                  ,Text('Training',style: TextStyle(fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                            SizedBox(height: 15,),
                            Container(
                                padding: EdgeInsets.only(left: 20,right: 20),
                                alignment: Alignment.topCenter,
                                child:CurvedLinearProgressIndicator(
                                  strokeWidth: 25,
                                  valueColor: new AlwaysStoppedAnimation<Color>(Colors.pink),
                                  value: 0.6,
                                  backgroundColor: Colors.grey,
                                  color: Colors.blue,
                                  minHeight: 8,
                                )
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(width:10 ,),
                                  Text('0',style: TextStyle(fontSize: 8),),SizedBox(width:190 ,),
                                  Text('3h',style: TextStyle(fontSize: 8),),SizedBox(width:80 ,),
                                  Text('12h',style: TextStyle(fontSize: 8),),

                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:2,left:10),
                              child: Row(
                                children: [
                                  Icon(Icons.bloodtype_sharp,color: Colors.blue,),SizedBox(width: 7,)
                                  ,Text('Blood Pressure',style: TextStyle(fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                            SizedBox(height: 15,),
                            Container(
                                padding: EdgeInsets.only(left: 20,right: 20),
                                alignment: Alignment.topCenter,
                                child: CurvedLinearProgressIndicator(
                                  strokeWidth: 25,
                                  valueColor: new AlwaysStoppedAnimation<Color>(Colors.purple),
                                  value: 0.4,
                                  backgroundColor: Colors.grey,
                                  color: Colors.blue,
                                  minHeight: 8,
                                )
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(width:10 ,),
                                  Text('0',style: TextStyle(fontSize: 8),),SizedBox(width:180 ,),
                                  Text('5.5h',style: TextStyle(fontSize: 8),),SizedBox(width:80 ,),
                                  Text('8h',style: TextStyle(fontSize: 8),),

                                ],
                              ),
                            ),

                          ],
                        ),//BoxDecoration
                      ),
                    ), //Container
                    //Row
                  ], //<widget>[]
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                ), //Column
              ) //Padding
          ), //Container
        ) //Center//Scaffold

    );
  }
}

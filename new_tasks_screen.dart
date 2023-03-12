import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_day_flutter/UserInfo.dart';
import 'package:first_day_flutter/editprofile.dart';
import 'package:first_day_flutter/modules/done_tasks/done_tasks_screen.dart';
import 'package:first_day_flutter/weeklyReport.dart';
import 'package:flutter/material.dart';
import 'package:first_day_flutter/drawer.dart';
class NewTasksScreen extends StatefulWidget {
  const NewTasksScreen({Key? key}) : super(key: key);

  @override
  State<NewTasksScreen> createState() => _NewTasksScreenState();
}

class _NewTasksScreenState extends State<NewTasksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:[
                        CircleAvatar(
                          radius: 25.0,
                          backgroundImage: NetworkImage('https://images.unsplash.com/photo-1554080353-a576cf803bda?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGhvdG98ZW58MHx8MHx8&w=1000&q=80'),
                        ),SizedBox(width: 194,),
                        InkWell(onTap:(){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => NavBar()),
                          );

                        }  ,
                            child: Icon(Icons.menu,size: 35,)),

                      ]
                  ),

                ),
                SizedBox(height: 10,),
                Column(
                  children: [
                    Row(
                        children: [
                          Text('Hello,',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),SizedBox(width: 150,),]),
                    Row(
                        children: [
                          Text(' zhraa!',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),SizedBox(width: 4,),
                          CircleAvatar(
                            radius: 20.0,
                            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqW4Vu_Av_cYhic2GvYFLlno0kt33U5Vgl7S0rB8TmNnw9ggP1K593FL4IvdkYpI-KjIM&usqp=CAU'),
                          ),]),

                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[300]
                  ),padding: EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(width: 15),
                      Text('Search...')
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Column(
                  children: <Widget>[
                    //Row
                    Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Container(
                          width: 350,
                          height: 140,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.blue[300]
                          ), child:
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text('Keep Your Life Healthy,',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                ),
                              ],
                            )],
                        ),//BoxDecoration
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 15.0,
                          child: InkWell(onTap:() {
                          }
                              ,child: Icon(Icons.cancel_outlined)),
                        ),
                      ],
                    ),

                  //Container
                    //Row
                  ], //<widget>[]
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                ),
                SizedBox(height: 15,),
                Row(children: [
                  Text('What Do you Need?',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)]),
                SizedBox(height: 15,),
                Row(children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue[300]
                    ),child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.call),SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text('Consult Doctor',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                        ),
                      ],
                    ),
                    width: 100,
                    height: 120,

                  ), SizedBox(width: 10,),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DoneTasksScreen()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[300]
                        ),child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Icon(Icons.dashboard_outlined),SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text('   View Dashbord',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                      ),
                      ],
                  ),
                        width: 120,
                        height: 120,

                      ),
                    ),
                  ), SizedBox(width: 10,),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => WeeklyReport()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue[300]
                        ),child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.view_week_rounded),SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text('Weekly  Report',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                          ),
                        ],
                      ),
                        width: 120,
                        height: 120,

                      ),
                    ),
                  ),

                ],),
                SizedBox(height: 15,),
                Row(children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[300]
                    ),child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.search,size: 35,),SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text('Search For Doctor',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      ),
                    ],
                  ),
                    width: 120,
                    height: 120,

                  ), SizedBox(width: 10,),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => EditProfile()),
                        );

                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue[300]
                        ),child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.co_present_rounded,size: 35,),SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text('Edit Profile',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                          ),
                        ],
                      ),
                        width: 120,
                        height: 120,

                      ),
                    ),
                  ), SizedBox(width: 10,),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Info()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[300]
                        ),child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.fastfood_rounded,size: 35,),SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text('Add Data',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                          ),
                        ],
                      ),
                        width: 120,
                        height: 120,

                      ),
                    ),
                  ),

                ],),


              ],

            ),
          ),
        )
    );
  }
}

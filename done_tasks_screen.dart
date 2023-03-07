import 'dart:math';
import 'package:curved_progress_bar/curved_progress_bar.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:first_day_flutter/modules/bmi_result/bmi_result_screen.dart';
import 'package:flutter/material.dart';
class DoneTasksScreen extends StatefulWidget {
  const DoneTasksScreen({Key? key}) : super(key: key);

  @override
  State<DoneTasksScreen> createState() => _DoneTasksScreenState();
}
class _DoneTasksScreenState extends State<DoneTasksScreen> {

  bool IsMale = true;
  double height=120.0;
  int weight=40;
  int Age=15;
  // Initial Selected Value
  String dropdownvalue = 'Last Week';

  // List of items in our dropdown menu
  var items = [
    'Last Week',
    'This Week',
  ];



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.grey[300],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CustomPaint(
                painter: ShapesPainter(),
                child: Container(height: 150,child:
                  Padding(
                    padding: const EdgeInsets.only(left:20,top: 15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:[
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1554080353-a576cf803bda?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGhvdG98ZW58MHx8MHx8&w=1000&q=80'),
                            ),SizedBox(width: 210,)
                           , Stack(
                              children: [
                                SizedBox(width: 60,height: 50,child: CurvedCircularProgressIndicator(value: .8,strokeWidth: 8,backgroundColor: Colors.grey[400],)),
                                Padding(
                                  padding: const EdgeInsets.all(19),
                                  child: Text('75%'),
                                )
                              ],
                            ),
                          ]
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Text('Hi,zhraa',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),SizedBox(width: 150,),
                            DropdownButton(

                              // Initial Value
                              value: dropdownvalue,

                              // Down Arrow Icon
                              icon: const Icon(Icons.keyboard_arrow_down),

                              // Array list of items
                              items: items.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              // After selecting the desired option,it will
                              // change button value to selected value
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownvalue = newValue!;
                                });
                              },
                            ),
                          ],
                        ),


                      ],
                    ),
                  ),),

              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Overview',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              ),
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 14,
                                      top:2
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        CircleAvatar(
                                          radius: 10.0,
                                          backgroundImage: NetworkImage('https://www.essent.com/SiteData/SiteID34/Images/Functionality-Pages/Quotes-StepsB.png'),
                                        ),SizedBox(width: 7,)
                                        ,Text('Steps',style: TextStyle(fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),SizedBox(height: 5,),
                              Stack(
                                 children: [
                                   SizedBox(width: 68,height: 50,child: CurvedCircularProgressIndicator(value: .8,strokeWidth: 8,backgroundColor: Colors.grey[400],)),
                                   Padding(
                                     padding: const EdgeInsets.all(15),
                                     child: Text('10,350'),
                                   )
                                 ],
                               ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16.0,top: 2.5),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text('5.7 KM'),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color:Colors.white,
                              )
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 16,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(Icons.water_drop_rounded,color: Colors.blue,)
                                    ,SizedBox(width: 5,)
                                      ,Text('Water',style: TextStyle(fontWeight: FontWeight.bold),),
                                    ],
                                  ),
                                ),SizedBox(height: 15,),
                                Container(
                                  padding: EdgeInsets.only(left: 20,right: 20),
                                    alignment: Alignment.topCenter,
                                    child: CurvedLinearProgressIndicator(
                                      strokeWidth: 10,
                                      value: 0.7,
                                      backgroundColor: Colors.grey,
                                      color: Colors.blue,
                                      minHeight: 8,
                                    )
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 7,left: 20.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text('2.45',style: TextStyle(fontSize: 11),),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text('Liters'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  )),
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 16,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                    Icon(Icons.bedtime,color: Colors.blue,)
                                      ,SizedBox(width: 5,)
                                      ,Text('Sleep',style: TextStyle(fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ),SizedBox(height: 12,),
                                Stack(
                                  children: [
                                    SizedBox(width: 70,height: 60,child: CurvedCircularProgressIndicator(value: .8,strokeWidth: 8,backgroundColor: Colors.grey[400],)),
                                    Padding(
                                      padding: const EdgeInsets.all(15),
                                      child: Column(
                                        children: [
                                          Text('08:32'),
                                          Text('Hours'),
                                        ],
                                      ),
                                    )
                                  ],
                                ),

                              ],
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left:25.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(Icons.fitness_center_sharp,color: Colors.blue,),
                                      Text(
                                        'Training',
                                        style: TextStyle(
                                            fontSize: 18, fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left:45.0),
                                      child: Text(
                                        '01:32',
                                        style: TextStyle(
                                           fontSize: 16),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:45),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Hours',
                                        style: TextStyle(
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                      ],
                    ),
                  )),
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 16,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(Icons.work,color: Colors.blue,)
                                      ,SizedBox(width: 5,)
                                      ,Text('Working',style: TextStyle(fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ),SizedBox(height: 12,),
                                Stack(
                                  children: [
                                    SizedBox(width: 70,height: 60,child: CurvedCircularProgressIndicator(value: .8,strokeWidth: 8,backgroundColor: Colors.grey[400],)),
                                    Padding(
                                      padding: const EdgeInsets.all(15),
                                      child: Column(
                                        children: [
                                          Text('07:00'),
                                          Text('Hours'),
                                        ],
                                      ),
                                    )
                                  ],
                                ),

                              ],
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 16,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(Icons.bloodtype_sharp,color: Colors.blue,)
                                      ,SizedBox(width: 5,)
                                      ,Text('Blood pressure',style: TextStyle(fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ),SizedBox(height: 12,),
                                Stack(
                                  children: [
                                    SizedBox(width: 70,height: 60,child: CurvedCircularProgressIndicator(value: .8,strokeWidth: 8,backgroundColor: Colors.grey[400],)),
                                    Padding(
                                      padding: const EdgeInsets.all(15),
                                      child: Column(
                                        children: [
                                          Text('07:00'),
                                          Text('Hours'),
                                        ],
                                      ),
                                    )
                                  ],
                                ),

                              ],
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                      ],
                    ),
                  )),


            ],
          ),
        ),
      ),
    );
  }
}

const double _kCurveHeight = 15;

class ShapesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final p = Path();
    p.lineTo(10, size.height - _kCurveHeight);
    p.relativeQuadraticBezierTo(size.width /2.5, 3* _kCurveHeight, size.width, 0);
    p.lineTo(size.width,1);
    p.close();

    canvas.drawPath(p, Paint()..color = Colors.white);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}




















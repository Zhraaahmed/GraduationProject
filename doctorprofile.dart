import 'package:first_day_flutter/add_Advs.dart';
import 'package:first_day_flutter/Questions.dart';
import 'package:first_day_flutter/doctor_prof.dart';
import 'package:first_day_flutter/patients.dart';
import 'package:flutter/material.dart';
class DocProf extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return  DocProfState ();
  }
}
class   DocProfState extends State<DocProf> {
  int currentIndex=0;
  List<Widget>screens=[Questions(),Patients(),Profile()];
  List<String>titles=['Questions','Users','Profile'];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar:BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        selectedFontSize: 13,
        unselectedFontSize: 13,
        iconSize: 30,
        currentIndex: currentIndex,
        selectedIconTheme: IconThemeData(color: Colors.blue),

        backgroundColor: Colors.white,
        onTap: (index){
          setState(() {
            currentIndex=index;
          });
        },
        items: [
          BottomNavigationBarItem(label: "Questions", icon: Icon(Icons.question_answer,),),
          BottomNavigationBarItem(label: "Users", icon: Icon(Icons.person), ),
          BottomNavigationBarItem(label: "Profile", icon: Icon(Icons.person),)
        ],),
    );
  }
}



import 'package:first_day_flutter/Ads.dart';
import 'package:first_day_flutter/doctors.dart';
import 'package:first_day_flutter/modules/archived_tasks/archived_tasks_screen.dart';
import 'package:first_day_flutter/patients.dart';
import 'package:first_day_flutter/search.dart';
import 'package:flutter/material.dart';

class AdminProf extends StatefulWidget {
  const AdminProf({Key? key}) : super(key: key);

  @override
  State<AdminProf> createState() => _AdminProfState();
}

class _AdminProfState extends State<AdminProf> {
  int currentIndex=0;
  List<Widget>screens=[Ads(),Patients(),Sea()];
  List<String>titles=['Advertisements','Users','Profile'];
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
          BottomNavigationBarItem(label: "Advertisements", icon: Icon(Icons.newspaper_outlined,),),
          BottomNavigationBarItem(label: "Users", icon: Icon(Icons.person), ),
          BottomNavigationBarItem(label: "Doctors", icon: Icon(Icons.health_and_safety_rounded),)
        ],),
    );
  }
}

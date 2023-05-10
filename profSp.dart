import 'package:first_day_flutter/Ads.dart';
import 'package:first_day_flutter/pay.dart';
import 'package:flutter/material.dart';

class profSp extends StatefulWidget {
   profSp({Key? key}) : super(key: key);

  @override
  State<profSp> createState() => _profSpState();
}

class _profSpState extends State<profSp> {
  int currentIndex=0;
  List<Widget>screens=[Ads(),Pay()];
  List<String>titles=['Advertisements',"Payment"];
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
          BottomNavigationBarItem(label: "Pay", icon: Icon(Icons.monetization_on,),),
        ],),
    );
  }
}

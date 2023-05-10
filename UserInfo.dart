import 'dart:developer';

import 'package:first_day_flutter/layout/home_layout.dart';
import 'package:first_day_flutter/modules/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class Info extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return InfoState();
  }
}

class InfoState extends State<Info> {
  List users=[];
  CollectionReference usersref=FirebaseFirestore.instance.collection("users");
  getData()async{
    var responsebody=await usersref.get();
    responsebody.docs.forEach((element) {
      setState(() {
        users.add(element.data());
      });

    });
    usersref.doc("W3sSuBHoIq9ZLR4uiOG8").update({
      "Age":"${Age}"
    });
    print(users);
  }
  var level = 80.0;
  var counter=0;
  var Age=0;
  var selectedgender;
  var active;
  var smoke;
  var chro_disease;
  var short_dis;
  var daily;
  var height=0;
  var weight=0;
  var work=0;
  var sleep=0;
  var heart=0;
  var blood=0;
  var walk=0;
  var gender="";
  var w=0;
  var h=0;
  var wo=0;
  var s=0;
  var hr=0;
  var gl=0.0;
  var B=0; var water=0; var train=0; var steps=0;var st=0;var wa=0;var tr=0;
  var S=0.0;
  var WAL=0;var AL="";var SM="";var CD="";var SD="";var DFI="";

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
              child: Text("Your Information",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black))),
          backgroundColor: Colors.white,
          leading: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeLayout()),
                );
              },
              child: Text(
                "Back",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              )),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
              child: const Text(
                'Save',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ],
        ),
        body: ListView(children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "    Age",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: ListTile(
                trailing: InkWell(
                  onTap:()async{
                    setState(() {
                      counter++;
                    });
                    Age=counter;
                    usersref.doc("W3sSuBHoIq9ZLR4uiOG8").update({
                      "Age":"${Age}"
                    });

                  },
                  child: (Icon(
                    Icons.add,
                    size: 30,
                    color: Colors.blue,
                  )),
                ),
                title: Center(
                  child: Text(
                    "$counter",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                leading: InkWell(
                  onTap:()async{
                    setState(() {
                      counter--;
                    });
                    Age=counter;
                    usersref.doc("W3sSuBHoIq9ZLR4uiOG8").update({
                      "Age":"${Age}"
                    });
                  },
                  child: (Icon(
                    Icons.minimize,
                    size: 30,
                    color: Colors.blue,
                  )),
                ),
              )),
          Text(
            "    Water",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: ListTile(
                trailing: InkWell(
                  onTap:()async{
                    setState(() {
                      water++;
                    });
                    wa=water;
                    usersref.doc("W3sSuBHoIq9ZLR4uiOG8").update({
                      "Water":"${wa}"
                    });

                  },
                  child: (Icon(
                    Icons.add,
                    size: 30,
                    color: Colors.blue,
                  )),
                ),
                title: Center(
                  child: Text(
                    "$water",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                leading: InkWell(
                  onTap:()async{
                    setState(() {
                     water--;
                    });
                   wa= water;
                    usersref.doc("W3sSuBHoIq9ZLR4uiOG8").update({
                      "Water":"${wa}"
                    });
                  },
                  child: (Icon(
                    Icons.minimize,
                    size: 30,
                    color: Colors.blue,
                  )),
                ),
              )),
          Text(
            "    Training",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: ListTile(
                trailing: InkWell(
                  onTap:()async{
                    setState(() {
                      train++;
                    });
                    tr=train;
                    usersref.doc("W3sSuBHoIq9ZLR4uiOG8").update({
                      "Train":"${tr}"
                    });

                  },
                  child: (Icon(
                    Icons.add,
                    size: 30,
                    color: Colors.blue,
                  )),
                ),
                title: Center(
                  child: Text(
                    "$train",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                leading: InkWell(
                  onTap:()async{
                    setState(() {
                      train--;
                    });
                    tr=train;
                    usersref.doc("W3sSuBHoIq9ZLR4uiOG8").update({
                      "Train":"${train}"
                    });
                  },
                  child: (Icon(
                    Icons.minimize,
                    size: 30,
                    color: Colors.blue,
                  )),
                ),
              )),
          Text(
            "    Steps",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: ListTile(
                trailing: InkWell(
                  onTap:()async{
                    setState(() {
                     steps++;
                    });
                    st=steps;
                    usersref.doc("W3sSuBHoIq9ZLR4uiOG8").update({
                      "Steps":"${st}"
                    });

                  },
                  child: (Icon(
                    Icons.add,
                    size: 30,
                    color: Colors.blue,
                  )),
                ),
                title: Center(
                  child: Text(
                    "$steps",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                leading: InkWell(
                  onTap:()async{
                    setState(() {
                      steps--;
                    });
                    st=steps;
                    usersref.doc("W3sSuBHoIq9ZLR4uiOG8").update({
                      "Steps":"${st}"
                    });
                  },
                  child: (Icon(
                    Icons.minimize,
                    size: 30,
                    color: Colors.blue,
                  )),
                ),
              )),
          Text(
            "    Gender",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Container(
              height: 50,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: DropdownButton(
                iconEnabledColor: Colors.blue,
                alignment: Alignment.topLeft,
                items: ["male", "female"]
                    .map((e) => DropdownMenuItem(
                          child: Text("$e"),
                          value: e,
                        ))
                    .toList(),
                onChanged: (val) {
                  setState(() {
                    selectedgender = val;
                  });
                  gender=selectedgender;
                  usersref.doc("W3sSuBHoIq9ZLR4uiOG8").update({
                    "Gender":"${gender}"
                  });
                },
                value: selectedgender,
              )),
          Text(
            "    Height",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: ListTile(
                trailing: InkWell(
                  onTap:()async{
                    setState(() {
                      height++;
                    });
                    h=height;
                    usersref.doc("W3sSuBHoIq9ZLR4uiOG8").update({
                      "Height":"${h}"
                    });
                  },
                  child: (Icon(
                    Icons.add,
                    size: 30,
                    color: Colors.blue,
                  )),
                ),
                title: Center(
                  child: Text(
                    "$height CM",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                leading: InkWell(
                  onTap:()async{
                    setState(() {
                      height--;
                    });
                    h=height;
                    usersref.doc("W3sSuBHoIq9ZLR4uiOG8").update({
                      "Height":"${h}"
                    });
                  },
                  child: (Icon(
                    Icons.minimize,
                    size: 30,
                    color: Colors.blue,
                  )),
                ),
              )),
          Text(
            "    Weight",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: ListTile(
                trailing: InkWell(
                  onTap:()async{
                    setState(() {
                      weight++;
                    });
                    w=weight;
                    usersref.doc("W3sSuBHoIq9ZLR4uiOG8").update({
                      "Weight":"${w}"
                    });
                  },
                  child: (Icon(
                    Icons.add,
                    size: 30,
                    color: Colors.blue,
                  )),
                ),
                title: Center(
                  child: Text(
                    "$weight KG",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                leading: InkWell(
                  onTap:()async{
                    setState(() {
                      weight--;
                    });
                    w=weight;
                    usersref.doc("W3sSuBHoIq9ZLR4uiOG8").update({
                      "Weight":"${w}"
                    });
                  },
                  child: (Icon(
                    Icons.minimize,
                    size: 30,
                    color: Colors.blue,
                  )),
                ),
              )),
          Text(
            "    Working Hours",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: ListTile(
                trailing: InkWell(
                  onTap:()async{
                    setState(() {
                     work++;
                    });
                    wo=work;
                    usersref.doc("W3sSuBHoIq9ZLR4uiOG8").update({
                      "Work":"${wo}"
                    });
                  },
                  child: (Icon(
                    Icons.add,
                    size: 30,
                    color: Colors.blue,
                  )),
                ),
                title: Center(
                  child: Text(
                    "$work Hours",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                leading: InkWell(
                  onTap:()async{
                    setState(() {
                      work--;
                    });
                    wo=work;
                    usersref.doc("W3sSuBHoIq9ZLR4uiOG8").update({
                      "Work":"${wo}"
                    });
                  },
                  child: (Icon(
                    Icons.minimize,
                    size: 30,
                    color: Colors.blue,
                  )),
                ),
              )),
          Text(
            "    Sleeping Hours",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: ListTile(
                trailing: InkWell(
                  onTap:(){
                    setState(() {
                      sleep++;
                    });
                    s=sleep;
                    usersref.doc("W3sSuBHoIq9ZLR4uiOG8").update({
                      "Sleep":"${s}"
                    });
                  },
                  child: (Icon(
                    Icons.add,
                    size: 30,
                    color: Colors.blue,
                  )),
                ),
                title: Center(
                  child: Text(
                    "$sleep Hours",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                leading: InkWell(
                  onTap:(){
                    setState(()async {
                     sleep--;
                    });
                    s=sleep;
                    usersref.doc("W3sSuBHoIq9ZLR4uiOG8").update({
                      "Sleep":"${s}"
                    });
                  },
                  child: (Icon(
                    Icons.minimize,
                    size: 30,
                    color: Colors.blue,
                  )),
                ),
              )),
          Text(
            "    Heart Rate",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: ListTile(
                trailing: InkWell(
                  onTap:(){
                    setState(() {
                      heart++;
                    });
                    hr=heart;
                    usersref.doc("W3sSuBHoIq9ZLR4uiOG8").update({
                      "Heart Rate":"${hr}"
                    });
                  },
                  child: (Icon(
                    Icons.add,
                    size: 30,
                    color: Colors.blue,
                  )),
                ),
                title: Center(
                  child: Text(
                    "$heart BPM",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                leading: InkWell(
                  onTap:(){
                    setState(() {
                      heart--;
                    });
                  },
                  child: (Icon(
                    Icons.minimize,
                    size: 30,
                    color: Colors.blue,
                  )),
                ),
              )),
          Text("   Glucose Level",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          Container(
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Slider(
                inactiveColor: Colors.black12,
                min: 0.0,
                max: 300.0,
                value: level,
                onChanged: (val)async {
                  setState(() {
                    level = val;
                  });
                  gl=level;
                  usersref.doc("W3sSuBHoIq9ZLR4uiOG8").update({
                    "Glucose level":"${gl}"
                  });
                }),
          ),
          Text(
            "    Blood pressure",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: ListTile(
                trailing: InkWell(
                  onTap:(){
                    setState(() {
                      blood++;
                    });
                    B=blood;
                    usersref.doc("W3sSuBHoIq9ZLR4uiOG8").update({
                      "Blood":"${B}"
                    });
                  },
                  child: (Icon(
                    Icons.add,
                    size: 30,
                    color: Colors.blue,
                  )),
                ),
                title: Center(
                  child: Text(
                    "$blood/75",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                leading: InkWell(
                  onTap:(){
                    setState(() {
                      blood--;
                    });
                    B=blood;
                    usersref.doc("W3sSuBHoIq9ZLR4uiOG8").update({
                      "Blood":"${B}"
                    });
                  },
                  child: (Icon(
                    Icons.minimize,
                    size: 30,
                    color: Colors.blue,
                  )),
                ),
              )),
          Text(
            "    Walking",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: ListTile(
                trailing: InkWell(
                  onTap:(){
                    setState(() {
                      walk++;
                    });
                    WAL=walk;
                    usersref.doc("W3sSuBHoIq9ZLR4uiOG8").update({
                      "Walk":"${WAL}"
                    });

                  },
                  child: (Icon(
                    Icons.add,
                    size: 30,
                    color: Colors.blue,
                  )),
                ),
                title: Center(
                  child: Text(
                    "$walk Minutes",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                leading: InkWell(
                  onTap:(){
                    setState(() {
                      walk--;
                    });
                    WAL=walk;
                    usersref.doc("W3sSuBHoIq9ZLR4uiOG8").update({
                      "Walk":"${WAL}"
                    });
                  },
                  child: (Icon(
                    Icons.minimize,
                    size: 30,
                    color: Colors.blue,
                  )),
                ),
              )),
          Text(
            "    Activity Level",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Container(
              height: 50,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: DropdownButton(
                iconEnabledColor: Colors.blue,
                alignment: Alignment.topLeft,
                items: [
                  "  Light Exercise 1-3 days Per Week",
                  "  strong Exercise 1-2 days Per Week"
                ]
                    .map((e) => DropdownMenuItem(
                          child: Text("$e"),
                          value: e,
                        ))
                    .toList(),
                onChanged: (val) {
                  setState(() {
                    active = val;
                  });
                  AL=active;
                  usersref.doc("W3sSuBHoIq9ZLR4uiOG8").update({
                    "Activity Level":"${AL}"
                  });
                },
                value: active,
              )),
          Text(
            "    Smoking",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Container(
              height: 50,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: DropdownButton(
                iconEnabledColor: Colors.blue,
                alignment: Alignment.topLeft,
                items: ["  Non- Smoker", "  Smoker"]
                    .map((e) => DropdownMenuItem(
                          child: Text("$e"),
                          value: e,
                        ))
                    .toList(),
                onChanged: (val) {
                  setState(() {
                    smoke = val;
                  });
                  SM=smoke;
                  usersref.doc("W3sSuBHoIq9ZLR4uiOG8").update({
                    "Smoking":"${SM}"
                  });
                },
                value: smoke,
              )),
          Text(
            "    Chronic Diseases",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Container(
              height: 50,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: DropdownButton(
                iconEnabledColor: Colors.blue,
                alignment: Alignment.topLeft,
                items: ["  High Cholestrol", " Arthritis "]
                    .map((e) => DropdownMenuItem(
                          child: Text("$e"),
                          value: e,
                        ))
                    .toList(),
                onChanged: (val) {
                  setState(() {
                    chro_disease = val;
                  });
                  CD=chro_disease;
                  usersref.doc("W3sSuBHoIq9ZLR4uiOG8").update({
                    "Chrronic Disease":"${CD}"
                  });
                },
                value: chro_disease,
              )),
          Text(
            "    Short Disease",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Container(
              height: 50,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: DropdownButton(
                iconEnabledColor: Colors.blue,
                alignment: Alignment.topLeft,
                items: ["  Influenza", "  Cough"]
                    .map((e) => DropdownMenuItem(
                          child: Text("$e"),
                          value: e,
                        ))
                    .toList(),
                onChanged: (val) {
                  setState(() {
                    short_dis = val;
                  });
                  SD=short_dis;
                  usersref.doc("W3sSuBHoIq9ZLR4uiOG8").update({
                    "Short Disease":"${SD}"
                  });
                },
                value: short_dis,
              )),
          Text(
            "    Daily Food Item",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Container(
              height: 50,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: DropdownButton(
                iconEnabledColor: Colors.blue,
                alignment: Alignment.topLeft,
                items: ["  Fish", "  Eggs", "Oats,Rice ", "Potatoes"]
                    .map((e) => DropdownMenuItem(
                          child: Text("$e"),
                          value: e,
                        ))
                    .toList(),
                onChanged: (val) {
                  setState(() {
                    daily = val;
                  });
                  DFI=daily;
                  usersref.doc("W3sSuBHoIq9ZLR4uiOG8").update({
                    "Daily Food":"${DFI}"
                  });
                },
                value: daily,
              )),

        ]));
  }
}

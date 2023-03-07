import 'package:first_day_flutter/layout/home_layout.dart';
import 'package:first_day_flutter/modules/profile/profile_screen.dart';
import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return InfoState();
  }
}

class InfoState extends State<Info> {
  var level = 80.0;
  var counter=0;
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
                  onTap:(){
                    setState(() {
                      counter++;
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
                  onTap:(){
                    setState(() {
                      counter--;
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
                  onTap:(){
                    setState(() {
                      height++;
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
                  onTap:(){
                    setState(() {
                      height--;
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
                  onTap:(){
                    setState(() {
                      weight++;
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
                  onTap:(){
                    setState(() {
                      weight--;
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
                  onTap:(){
                    setState(() {
                     work++;
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
                  onTap:(){
                    setState(() {
                      work--;
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
                    setState(() {
                     sleep--;
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
                onChanged: (val) {
                  setState(() {
                    level = val;
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
                    setState(() {
                      sleep--;
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
                },
                value: daily,
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
                },
                value: active,
              )),
        ]));
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:first_day_flutter/Abdelrah.dart';
import 'package:first_day_flutter/ah.dart';
import 'package:first_day_flutter/doctorInfo.dart';
import 'package:first_day_flutter/khad.dart';
import 'package:first_day_flutter/mos.dart';
import 'package:first_day_flutter/nage.dart';
import 'package:first_day_flutter/rad.dart';
import 'package:first_day_flutter/rof.dart';
import 'package:flutter/material.dart';
import 'package:first_day_flutter/doctors.dart';
import 'package:flutter/material.dart';
class Sea extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return SeaState ();

  }
}
class  SeaState extends State<Sea> {
  List doctors=[];
  CollectionReference doctorsref=FirebaseFirestore.instance.collection("doctors");
  getData()async{
    var responsebody=await doctorsref.get();
    responsebody.docs.forEach((element) {
      setState(() {
        doctors.add(element.data());
      });

    });
    print(doctors);
  }
  bool fav=true;
  int i=0;
  int i1=1;
  int i2=2;
  int i3=3;
  int i4=4;
  int i5=5;
  int i6=6;
  int i7=7;
  int i8=8;
  int current=0;
  int h=0;
  List<Widget>loc=[docInfo(),Abd(),nag(),kh(),mos(),rad(),rof(),ah()];
  List<int>num=[0,1,2,3,4,5,6,7,8];
  var selectedindex =2;
  int favorite=0;
  final List<Map<String, dynamic>> data =[
    {
      "name": "Dr. Shams Ali",
      "reviews":"reviews",
      "star": 0,
      "sub":"Inner specialty  -  fifth settlement hospital",
      "favorite":0,
      "image": "Images/1.jpg","n":1
    },
    {
      "name": "Dr. Abdelrahman Mahmoude ",
      "reviews":"reviews",
      "star": 0,
      "sub": "Ear ans nose specialty - Minia hospital",
      "favorite":0,
      "image": "Images/2.jpg","n":2
    },
    {
      "name": "Dr. Nage Abdelsatar ",
      "reviews":"reviews",
      "star": 0,
      "sub": "Orthopedic specialty      -  Alex hospital",
      "favorite":0,
      "image": "Images/3.jpg","n":3
    },
    {
      "name": "Dr. Khadiga Shaban ",
      "reviews":"reviews",
      "star": 0,
      "sub": " Specializing in Obstetrics and Gynecology -  Minia hospital",
      "favorite":0,
      "image": "Images/4.jpg","n":4
    },
    {
      "name": "Dr. Mostafa Talat ",
      "reviews":"reviews",
      "star": 0,
      "sub": "Eye specialty  - Fayum hospital",
      "favorite":0,
      "image": "Images/5.jpg","n":5

    },
    {
      "name": "Dr. Radwa Sihab ",
      "reviews":"reviews",
      "star": 0,
      "sub": "Urology specialty  - Zagazig hospital",
      "favorite":0,
      "image": "Images/6.jpg",
      "n":"6"

    },
    {
      "name": "Dr. Rofida mohamed ",
      "reviews":"reviews",
      "star": 0,
      "sub": " Specializing in general and Plastic Surgery   - Minia hospital",
      "favorite":0,
      "image": "Images/7.jpg",
      "n":7
    },
    {
      "name": "Dr. Ahlam Eid ",
      "reviews":"reviews",
      "star": 0,
      "sub": "Dental specialty  - New Cairo hospital",
      "favorite":0,
      "image": "Images/8.jpg","n":8

    }
  ];
  // This list holds the data for the list view
  List<Map<String, dynamic>> _foundDoctor = [];
  @override
  initState() {
    // at the beginning, all users are shown
    _foundDoctor = data;
    getData();
    super.initState();
  }
// This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = data;
    } else {
      results = data
          .where((user) =>
          user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundDoctor = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text(" Search         ", style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black))),
          backgroundColor: Colors.white,

          bottom: PreferredSize(
            preferredSize:Size(4,60),
            child:  Column(
                children: [Container(
                  height: 50,
                  width: 375,
                  margin: EdgeInsets.all(10),
                  child: TextFormField(
                    onChanged: (value) => _runFilter(value),
                    onFieldSubmitted: (covariant){
                      setState(() {
                      });

                    },
                    cursorColor: Colors.cyan,
                    decoration: InputDecoration(
                        disabledBorder: InputBorder.none,
                        focusColor: Colors.grey,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60),borderSide: BorderSide(width: 20,color: Colors.black)),

                        prefixIcon:  Icon(Icons.search),
                        suffixIcon: Container(child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,mainAxisSize: MainAxisSize.min,
                          children: [Icon(Icons.tune),Text("   ") ,Icon(Icons.keyboard_voice),Text("  ")],),)
                    ),
                  ),





                ),



                ] )
            ,),

        ),
        body:Container(color:Colors.indigo[50],
          child: _foundDoctor.isNotEmpty
              ?  ListView.builder(
              itemCount: _foundDoctor.length,
              itemBuilder: (context, index) => Card(
                  child: InkWell(onTap: (){
                    print(index);
                    if(index==0){
                      Navigator.push( context,
                          MaterialPageRoute(builder: (context) =>loc[0],)
                      );

                    }  if(index==1){
                      Navigator.push( context,
                          MaterialPageRoute(builder: (context) =>loc[1],)
                      );

                    }  if(index==2){
                      Navigator.push( context,
                          MaterialPageRoute(builder: (context) =>loc[2],)
                      );

                    }  if(index==3){
                      Navigator.push( context,
                          MaterialPageRoute(builder: (context) =>loc[3],)
                      );

                    }  if(index==4){
                      Navigator.push( context,
                          MaterialPageRoute(builder: (context) =>loc[4],)
                      );

                    }  if(index==5){
                      Navigator.push( context,
                          MaterialPageRoute(builder: (context) =>loc[5],)
                      );

                    }  if(index==6){
                      Navigator.push( context,
                          MaterialPageRoute(builder: (context) =>loc[6],)
                      );

                    }  if(index==7){
                      Navigator.push( context,
                          MaterialPageRoute(builder: (context) =>loc[7],)
                      );

                    }
                  },
                    child: Row(children: [

                      ColoredBox(color:Colors.white),
                      Expanded(
                        child: Image.asset(_foundDoctor[index]['image'],width: 500,height:100),
                        flex: 1,
                      ),
                      Expanded( flex: 3,
                        child: Column(
                          children: [ListTile(title: Text(_foundDoctor[index]['name']),
                              trailing:InkWell(
                                  onTap:(){
                                    var fav=false;
                                    setState(() {
                                      fav=true;
                                    });
                                    print(fav);
                                  },
                                  child: Icon(fav==false? Icons.favorite_border:Icons.favorite,color: Colors.blue,)) ,
                              subtitle:Row(children: [Icon(Icons.star_half_outlined,color: Colors.blue,), Text(_foundDoctor[index]['reviews']),],)
                          ),
                            Text(_foundDoctor[index]['sub'],)],

                        ),

                      )]),
                  )
              )
          )
              : const Text(
            'No results found Please try with diffrent search',
            style: TextStyle(fontSize: 24),
          ),)



      ),
    );

  }}
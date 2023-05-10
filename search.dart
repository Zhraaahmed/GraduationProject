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
class Sea extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return SeaState ();

  }
}

class  SeaState extends State<Sea> {
  int favorite=0;
  int currentIndex=0;
  int i=0;
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

 List<Widget>loc=[docInfo(),Abd()];
  bool fav=false;
  final List<Map<String, dynamic>> data =[
    {
      "name": "Dr. Shams Ali",
      "reviews":"reviews",
      "star": 0,
      "sub":"Inner specialty  -  fifth settlement hospital",
      "favorite":0,
      "image": "Images/1.jpg",
      "n":1,
    },
    {
      "name": "Dr. Abdelrahman Mahmoud ",
      "reviews":"reviews",
      "star": 0,
      "sub": "Ear ans nose specialty - Minia hospital",
      "favorite":0,
      "image": "Images/2.jpg",
      "n":2,
    },
    {
      "name": "Dr. Nage Abdelsatar ",
      "reviews":"reviews",
      "star": 0,
      "sub": "Orthopedic specialty      -  Alex hospital",
      "favorite":0,
      "image": "Images/3.jpg",
      "n":3,
    },
    {
      "name": "Dr. Khadiga Shaban ",
      "reviews":"reviews",
      "star": 0,
      "sub": " Specializing in Obstetrics and Gynecology -  Minia hospital",
      "favorite":0,
      "image": "Images/4.jpg",
      "n":4,
    },
    {
      "name": "Dr. Mostafa Talat ",
      "reviews":"reviews",
      "star": 0,
      "sub": "Eye specialty  - Fayum hospital",
      "favorite":0,
      "image": "Images/5.jpg",
    "n":5,

    },
    {
      "name": "Dr. Radwa Sihab ",
      "reviews":"reviews",
      "star": 0,
      "sub": "Urology specialty  - Zagazig hospital",
      "favorite":0,
      "image": "Images/6.jpg",
      "n":6,

    },
    {
      "name": "Dr. Rofida mohamed ",
      "reviews":"reviews",
      "star": 0,
      "sub": " Specializing in general and Plastic Surgery   - Minia hospital",
      "favorite":0,
      "image": "Images/7.jpg",
    "n":7,

    },
    {
      "name": "Dr. Ahlam Eid ",
      "reviews":"reviews",
      "star": 0,
      "sub": "Dental specialty  - New Cairo hospital",
      "favorite":0,
      "image": "Images/8.jpg",
    "n":8,

    }
  ];
  // This list holds the data for the list view
  List<Map<String, dynamic>> _foundDoctor = [];
  @override
  initState() {
      getData();
    // at the beginning, all users are shown
    _foundDoctor = data;
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

  List<Widget>locs=[docInfo(),Abd(),nag(),kh(),mos(),rad(),rof(),ah()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Search         ", style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black))),
        backgroundColor: Colors.white,

        bottom: PreferredSize(
          preferredSize:const Size(4,60),
          child:  Column(
              children: [Container(
                height: 50,
                width: 375,
                margin: const EdgeInsets.all(10),
                child: TextFormField(
                  onChanged: (value) => _runFilter(value),
                  onFieldSubmitted: (covariant){
                    setState(() {
                    });

                  },
                  cursorColor: Colors.cyan,
                  decoration: InputDecoration(
                      disabledBorder: InputBorder.none,
                      prefixText: "Dr.",
                      focusColor: Colors.grey,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60),borderSide: const BorderSide(width: 20,color: Colors.black)),
                      prefixIcon:  const Icon(Icons.search),
                      suffixIcon: Container(child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,mainAxisSize: MainAxisSize.min,
                        children: [const Icon(Icons.tune),const Text("   ") ,const Icon(Icons.keyboard_voice),const Text("  ")],),)
                  ),
                ),),



              ] )
          ,),

      ),
      body:  Container(color:Colors.indigo[50],
        child: InkWell(onTap: (){
        },
          child: InkWell(
            onTap: (){},
            child: ListView.builder(
                itemCount:data.length ,
                itemBuilder: (context, ins){
                  print(ins);
                  return ListData(data: data[ins],);
                }),
          ),
        ),
      ),
    );

  }}
class ListData extends StatefulWidget{
  final data ;

  ListData({this.data});

  @override
  State<ListData> createState() => _ListDataState();
}

class _ListDataState extends State<ListData> {
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
  @override
  void initState() {
    getData();
    super.initState();
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
  @override
  Widget build(BuildContext context){
    return Card(
        child: InkWell(onTap: (){
          setState(() {
            current=current+1;
            h=num[current];
          });
          print(widget.data['n']);
          if(widget.data['n']==1){
            Navigator.push( context,
                    MaterialPageRoute(builder: (context) =>loc[0],)
                  );

          } if(widget.data['n']==2){
            Navigator.push( context,
                MaterialPageRoute(builder: (context) =>loc[1],)
            );

          }
          if(widget.data['n']==3){
            Navigator.push( context,
                MaterialPageRoute(builder: (context) =>loc[2],)
            );

          }
          if(widget.data['n']==4){
            Navigator.push( context,
                MaterialPageRoute(builder: (context) =>loc[3],)
            );

          }
          if(widget.data['n']==5){
            Navigator.push( context,
                MaterialPageRoute(builder: (context) =>loc[4],)
            );

          }
          if(widget.data['n']==6){
            Navigator.push( context,
                MaterialPageRoute(builder: (context) =>loc[5],)
            );
          }
          if(widget.data['n']==7){
            Navigator.push( context,
                MaterialPageRoute(builder: (context) =>loc[6],)
            );
          }
          if(widget.data['n']==8){
            Navigator.push( context,
                MaterialPageRoute(builder: (context) =>loc[7],)
            );

          }
         //   Navigator.push(
        //      context,
        //      MaterialPageRoute(builder: (context) =>loc[current],)
        //  );
        },
          child: Row(children: [
            const ColoredBox(color:Colors.white),
            Expanded(
              child: Image.asset("${widget.data['image']}",width: 500,height:100),
              flex: 1,
            ),
            Expanded( flex: 3,
              child: Column(
                children: [InkWell(
                  child: ListTile(title: Text("${widget.data['name']}"),
                      trailing:InkWell(
                          onTap:(){
                        fav=false;
                        print(fav);
                       },
                        child: Icon(fav==true? Icons.favorite_border:Icons.favorite,color: Colors.blue,)) ,
                      subtitle:Row(children: [const Icon(Icons.star_half_outlined,color: Colors.blue,), Text("${widget.data['reviews']}"),],)
                  ),
                ),
                  Text("${widget.data['sub']}",)],
              ),

            )]),
        )

    );
  }
}
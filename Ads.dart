import 'package:first_day_flutter/Account_type.dart';
import 'package:first_day_flutter/AdminProfile.dart';
import 'package:first_day_flutter/add_Advs.dart';
import 'package:first_day_flutter/afterAdd.dart';
import 'package:flutter/material.dart';

class Ads extends StatefulWidget {
  const Ads({Key? key}) : super(key: key);

  @override
  State<Ads> createState() => _AdsState();
}

class _AdsState extends State<Ads> {
  var selectedindex=1;
  List data =[
    {
      "name": "Nutrition Clinic",
      "sub":"Cairo",
      "favorite":"Delete",
      "image": "Images/a.1.jpg",
    },
    {
      "name": "Cardiac Clinic",
      "sub":"El Minia",
      "favorite":"Delete",
      "image": "Images/a.4.jpg",
    },
    {
      "name": "Nutrition Clinic",
      "sub":"Mansoura",
      "favorite":"Delete",
      "image": "Images/a.3.jpg",

    },
    {
      "name": "Nutrition Clinic",
      "sub":"El Fyoum",
      "favorite":"Delete",
      "image": "Images/a.2.jpg",
    },
    {
      "name": "Cardiac Clinic",
      "sub":"Assuit",
      "favorite":"Delete",
      "image": "Images/a.5.jpg",

    },
    {
      "name": "Nutrition Clinic",
      "sub":"Alex",
      "favorite":"Delete",
      "image": "Images/a.6.jpg",

    },
    {

      "name": "Cardiac Clinic",
      "sub":"Beni Sweif",
      "favorite":"Delete",
      "image": "Images/a.7.jpg",
    },
    {
      "name": "Cardiac Clinic",
      "sub":"Beni Sweif",
      "favorite":"Delete",
      "image": "Images/a.8.jpg",

    },
    {
      "name": "Nutrition Clinic",
      "sub":"Assuan",
      "favorite":"Delete",
      "image": "Images/a.9.jpg",
    },
    {

      "name": "Cardiac Clinic",
      "sub":"El Auxor",
      "favorite":"Delete",
      "image": "Images/a.11.jpg",
    },
    {
      "name": "Nutrition Clinic",
      "sub":"Giza",
      "favorite":"Delete",
      "image": "Images/a.10.jpg",
    },
  ];
  var item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton:FloatingActionButton.extended(

          label: Row(
            children: [Icon(Icons.add,color: Colors.black,), Text('Add',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black))],
          ),
          heroTag: 'uniqueTag',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Adding()),
            );
          }
      ),
      appBar: AppBar(

        title: Center(child: Text(" Advertisements          ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black))),
        backgroundColor: Colors.white,

        leading: TextButton(onPressed: () {},
            child: Text("Back",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),)),

      ),
      body:  Container(color:Colors.indigo[50],
        child: ListView.builder(

            itemCount:data.length ,

            itemBuilder: (context,index){
              item =data[index];
              return ListData(data: data[index],);

            }),
      ),


    );
  }

  removeItem(int index) {}}

class ListData extends StatelessWidget {
  final data;

  var index;

  ListData({this.data});

  @override
  Widget build(BuildContext context) {
    return Card(
        child:InkWell(
          child: Row(children: [

            ColoredBox(color: Colors.white),
            Expanded(
              child: Image.asset("${data['image']}", width: 700, height: 130),
              flex: 2,
            ),
            Expanded(flex: 3,
                child: Column(
                    children: [
                      ListTile(title: Text("${data['name']}", style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),),
                        trailing: IconButton(
                            icon: Icon(Icons.delete, color: Colors.red,),
                            onPressed: () {
                              data.remove(index);
                            }

                        ),
                        subtitle: Row(children: [
                          Text("${data['sub']}", style: TextStyle(fontSize: 15)),
                          Icon(Icons.location_on, size: 10,),
                        ],),

                      )
                    ]))
          ]),
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Adding()),
            );
          },
        )


    );
  }

  }

class ListDta extends StatelessWidget{
  final data ;
  ListDta({this.data});
  @override
  Widget build(BuildContext context){
    return Card(
        child: Row(children: [

          ColoredBox(color:Colors.white),
          Expanded(
            child: Image.asset("${data['image']}",width: 700,height:130),
            flex: 2,
          ),
          Expanded( flex: 3,
              child: Column(
                  children: [ListTile(title: Text("${data['name']}",style: TextStyle(fontWeight: FontWeight.bold,fontSize:18),),
                    trailing: IconButton(
                      onPressed: () {
                        //data.removeAt(index);
                      },
                      icon: Icon(Icons.delete,color: Colors.red,),
                    ),
                    subtitle:Row(children: [Text("${data['sub']}",style: TextStyle(fontSize:15)),Icon(Icons.location_on,size: 10,),],),

                  )
                  ]))])

    );
  }}
import 'package:flutter/material.dart';
class  After_delete_ad extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return After_delete_adState ();

  }
}


class  After_delete_adState extends State<After_delete_ad> {
  List data =[

    {
      "name": "Cardiac Clinic",
      "sub":"El Minia",
      "favorite":"Delete",
      "image": "images/a.4.jpg",
    },
    {
      "name": "Nutrition Clinic",
      "sub":"Mansoura",
      "favorite":"Delete",
      "image": "images/a.3.jpg",

    },
    {
      "name": "Nutrition Clinic",
      "sub":"El Fyoum",
      "favorite":"Delete",
      "image": "images/a.2.jpg",
    },
    {
      "name": "Cardiac Clinic",
      "sub":"Assuit",
      "favorite":"Delete",
      "image": "images/a.5.jpg",

    },
    {
      "name": "Nutrition Clinic",
      "sub":"Alex",
      "favorite":"Delete",
      "image": "images/a.6.jpg",

    },
    {

      "name": "Cardiac Clinic",
      "sub":"Beni Sweif",
      "favorite":"Delete",
      "image": "images/a.7.jpg",
    },
    {
      "name": "Cardiac Clinic",
      "sub":"Beni Sweif",
      "favorite":"Delete",
      "image": "images/a.8.jpg",

    },
    {
      "name": "Nutrition Clinic",
      "sub":"Assuan",
      "favorite":"Delete",
      "image": "images/a.9.jpg",
    },
    {

      "name": "Cardiac Clinic",
      "sub":"El Auxor",
      "favorite":"Delete",
      "image": "images/a.11.jpg",
    },
    {
      "name": "Nutrition Clinic",
      "sub":"Giza",
      "favorite":"Delete",
      "image": "images/a.10.jpg",
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
            Navigator.of(context).pushNamed("add");
          }
      ),
      appBar: AppBar(

        title: Center(child: Text(" Advertisements          ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black))),
        backgroundColor: Colors.white,

        leading: TextButton(onPressed: () {
          Navigator.of(context).pushNamed("adv");

        },
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
        ])

    );
  }


}
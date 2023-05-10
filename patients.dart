import 'package:curved_progress_bar/curved_progress_bar.dart';
import 'package:first_day_flutter/AA.dart';
import 'package:first_day_flutter/Ag.dart';
import 'package:first_day_flutter/DA.dart';
import 'package:first_day_flutter/KM.dart';
import 'package:first_day_flutter/MM.dart';
import 'package:first_day_flutter/NK.dart';
import 'package:first_day_flutter/RS.dart';
import 'package:first_day_flutter/SM.dart';
import 'package:first_day_flutter/weeklyReport.dart';
import 'package:flutter/material.dart';
class Patients extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return  PatientsState ();
  }
}
class   PatientsState extends State<Patients> {
 // var selectedindex=2;
  List patientdata =[
    {
      "name": "Ahmed Gamal",
      "subinfo":"34 Years",
      "image": "Images/9.jpg",
      "rate":57 ,
      "val":.7 ,
      "n":1
    },
    {
      "name": "Abdelfatah Ali",
      "subinfo":"55 Years ",
      "image": "Images/10.jpg",
      "rate":20 ,
      "val":.9,
      "n":2
    },
    {
      "name": "Rawan Said",
      "subinfo":"26 Years ",
      "image": "Images/11.jpg",
      "rate":40 ,
      "val":.3 ,
      "n":3
    },
    {
      "name": "Doaa Abdelsatar",
      "subinfo":"76 Years ",
      "image": "Images/12.jpg",
      "rate":46 ,
      "val":.5 ,
      "n":4
    },
    {
      "name": "Shady Mahfoz",
      "subinfo":"44 Years ",
      "image": "Images/13.jpg",
      "rate":38 ,
      "val":.9 ,
      "n":5
    },
    {
      "name": "Malak Mahmoud",
      "subinfo":"33  Years ",
      "image": "Images/14.jpg",
      "rate":67 ,
      "val":.6 ,
      "n":6

    },
    {
      "name": "Nesma Khaled",
      "subinfo":"55 Years ",
      "image": "Images/15.jpg",
      "rate":84 ,
      "val":.2 ,
      "n":7
    },
    {
      "name": "Karem Mahmoud",
      "subinfo":"56 Years ",
      "image": "Images/16png.png",
      "rate":39 ,
      "val":.1 ,
      "n":8
    }
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Center(child: Text(" Users        ", style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black))),
        backgroundColor: Colors.white,
      ),
      body:  Container(color:Colors.indigo[50],
        child: ListView.builder(
            itemCount:patientdata.length ,
            itemBuilder: (context,i){
              return ListData(data: patientdata[i],);

            }),
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
  int current=0;
  int h=0;

  List<Widget>loc=[AG(),AA(),RS(),DA(),SM(),MM(),NK(),KM()];

  List<int>num=[0,1,2,3,4,5,6,7,8];

  @override
  Widget build(BuildContext context){
    return Card(
        child: InkWell(
          onTap: (){
            setState(() {
              current=current+1;
              h=num[current];
            });
            print(widget.data['n']);
             if(widget.data['n']==1){
              Navigator.push( context,
                  MaterialPageRoute(builder: (context) =>loc[0],)
              );

            }
            if(widget.data['n']==2){
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

            } if(widget.data['n']==8){
              Navigator.push( context,
                  MaterialPageRoute(builder: (context) =>loc[7],)
              );

            }
            //   Navigator.push(
            //      context,
            //      MaterialPageRoute(builder: (context) =>loc[current],)
            //  );
          },
          child:Row(children: [
            ColoredBox(color:Colors.white),

            Expanded(
              child: Image.asset("${widget.data['image']}",width: 500,height:100),
              flex: 1,
            ),
            Expanded( flex: 3,
              child: Column(children: [ListTile(
                title:Text("${widget.data['name']}"),
                subtitle:Text("${widget.data['subinfo']}"),
                trailing:Stack(
                  children: [
                    SizedBox(width: 55,height: 60,child: CurvedCircularProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(Colors.blue),value: widget.data['val'],strokeWidth: 8,backgroundColor: Colors.grey[400],)),
                    Padding(
                      padding: const EdgeInsets.all(17),
                      child: Column(
                        children: [
                          Text('${widget.data['rate']}%'),
                        ],
                      ),
                    )
                  ],
                ),


              )],

              ),
            )]),)  );
  }
}
import 'package:curved_progress_bar/curved_progress_bar.dart';
import 'package:first_day_flutter/weeklyReport.dart';
import 'package:flutter/material.dart';
class Patients extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return  PatientsState ();
  }
}
class   PatientsState extends State<Patients> {
  var selectedindex=3;
  List patientdata =[
    {
      "name": "Ahmed Gamal",
      "subinfo":"34 Years",
      "image": "Images/9.jpg",
      "rate":57 ,
      "val":.7 ,
    },
    {
      "name": "Abdelfatah Ali",
      "subinfo":"55 Years ",
      "image": "Images/10.jpg",
      "rate":20 ,
      "val":.9,
    },
    {
      "name": "Rawan Said",
      "subinfo":"26 Years ",
      "image": "Images/11.jpg",
      "rate":40 ,
      "val":.3 ,
    },
    {
      "name": "Doaa Abdelsatar",
      "subinfo":"76 Years ",
      "image": "Images/12.jpg",
      "rate":46 ,
      "val":.5 ,
    },
    {
      "name": "Shady Mahfoz",
      "subinfo":"44 Years ",
      "image": "Images/13.jpg",
      "rate":38 ,
      "val":.9 ,
    },
    {
      "name": "Malak Mahmoud",
      "subinfo":"33  Years ",
      "image": "Images/14.jpg",
      "rate":67 ,
      "val":.6 ,

    },
    {
      "name": "Nesma Khaled",
      "subinfo":"55 Years ",
      "image": "Images/15.jpg",
      "rate":84 ,
      "val":.2 ,
    },
    {
      "name": "Karem Mahmoud",
      "subinfo":"56 Years ",
      "image": "Images/16png.png",
      "rate":39 ,
      "val":.1 ,
    }
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Center(child: Text(" Patient         ", style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black))),
        backgroundColor: Colors.white,
        leading: TextButton(onPressed: () {},
            child: Text("Back",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),)),
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

class ListData extends StatelessWidget{
  final data ;
  ListData({this.data});
  @override
  Widget build(BuildContext context){
    return Card(

        child: InkWell(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WeeklyReport(name: data['name'])),
            );
          },
          child:Row(children: [
            ColoredBox(color:Colors.white),

            Expanded(
              child: Image.asset("${data['image']}",width: 500,height:100),
              flex: 1,
            ),
            Expanded( flex: 3,
              child: Column(children: [ListTile(
                title:Text("${data['name']}"),
                subtitle:Text("${data['subinfo']}"),
                trailing:Stack(
                  children: [
                    SizedBox(width: 55,height: 60,child: CurvedCircularProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(Colors.blue),value: data['val'],strokeWidth: 8,backgroundColor: Colors.grey[400],)),
                    Padding(
                      padding: const EdgeInsets.all(17),
                      child: Column(
                        children: [
                          Text('${data['rate']}%'),
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
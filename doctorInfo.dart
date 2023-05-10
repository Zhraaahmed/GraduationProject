import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class docInfo extends StatefulWidget {
  const docInfo({Key? key}) : super(key: key);

  @override
  State<docInfo> createState() => _docInfoState();
}

class _docInfoState extends State<docInfo> {
  List Doctors=[];
  CollectionReference Doctorsref=FirebaseFirestore.instance.collection("Doctors");
  getData()async{
    var responsebody=await Doctorsref.get();
    responsebody.docs.forEach((element) {
      setState(() {
       Doctors.add(element.data());
      });

    });
    print(Doctors);
  }

  @override
  void initState() {
    getData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
          title: Text("Dr.${Doctors[6]['name']}",
            style: TextStyle(color: Colors.black,fontSize:30,fontWeight: FontWeight.bold ),)),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            Divider(),
            Card(
              elevation: 5,
              child: SizedBox(
                width: 600,
                height: 90,
                child: ListTile(
                  leading:Container(
                    height: 90,
                    child: Image(image:AssetImage('Images/1.jpg'),),
                  ),

                  title: Text('DR.${Doctors[6]['name']}',style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [Icon(Icons.star_half_outlined,color: Colors.blue,),Text('reviews')],),
                      SizedBox(height: 5,),
                      Text('Inner specialty - Cairo hospital'),
                    ],
                  ),

                ),
              ),
            ),Divider(),
            Card(
              elevation: 5,
              child: SizedBox(
                width: 600,
                height: 90,
                child: ListTile(
                  title: Row(
                    children: [
                      SizedBox(width: 38,), Icon(Icons.group),SizedBox(width: 70,),
                      Icon(Icons.person),SizedBox(width: 70,),
                      Icon(Icons.message),
                    ],
                  ),
                  subtitle:  Row(
                    children: [
                      SizedBox(width: 28,), Text('  5000+ \nPatients'),SizedBox(width: 2,),
                      Text('               15+\n     Year Experience'),SizedBox(width: 5,),
                      Text('      3800+\n      Reviews'),
                    ],
                  ),

                ),
              ),
            ),
            Divider(),
            Card(
              elevation: 5,
              child: SizedBox(
                width: 600,
                height: 90,
                child: ListTile(
                  title: Text('About Doctor',style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text('Dr.shams one of the most well known doctors in her specialist.she achieved alot of awards for her wonderful contribution in medical field'),

                ),
              ),
            ),
            Divider(),
            Card(
              elevation: 5,
              child: SizedBox(
                width: 600,
                height: 90,
                child: ListTile(
                  title: Text('Working Time',style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text('Mon-Fri,09:00 AM-20.00 PM'),

                ),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(60)),
              width: double.infinity,
              child: MaterialButton(
                onPressed: () async {
                  },
                child: Text(
                  'Request For Supervision',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

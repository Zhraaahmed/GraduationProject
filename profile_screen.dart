import 'package:first_day_flutter/editprofile.dart';
import 'package:flutter/material.dart';
import 'package:drop_down_list/drop_down_list.dart';
class ProfileScreen extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return ProfileState();

  }
}

class  ProfileState extends State<ProfileScreen> {
  var index=0;
  final List<String> items = List<String>.generate(10, (i) => '$i');
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: SingleChildScrollView(
          child://Bottom
          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row( children: [
                    CircleAvatar(
                      radius: 25.0,
                      backgroundImage: NetworkImage('https://img.freepik.com/vrije-vector/gezonde-mensen-met-verschillende-pictogrammen_53876-43069.jpg?w=2000'),
                    ),SizedBox(width: 15,),
                    Text("profile",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)

                  ],),
                ),
                SizedBox(height: 30,),
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      radius: 65.0,
                      backgroundImage: NetworkImage('https://images.unsplash.com/photo-1554080353-a576cf803bda?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGhvdG98ZW58MHx8MHx8&w=1000&q=80'),
                    ),
                    CircleAvatar(
                      radius: 20, backgroundColor: Colors.white,
                    ),
                    CircleAvatar(
                      radius: 19,
                      backgroundImage: NetworkImage('https://aux.iconspalace.com/uploads/11887446621600674103.png'),
                    ),

                  ],
                ),
                SizedBox(height: 30,),
                Container(
                  decoration: BoxDecoration(border: Border(bottom: BorderSide())),
                  child: ListTile(
                      leading: Icon(Icons.sort_by_alpha,size: 30,),
                    title: Text('Al-zhraa Ahmed ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  decoration: BoxDecoration(border: Border(bottom: BorderSide())),
                  child: ListTile(
                      leading: Icon(Icons.email,size: 30,),
                    title: Text('azhraa449@gmail.com ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  decoration: BoxDecoration(border: Border(bottom: BorderSide())),
                  child: ListTile(
                    leading:Icon(Icons.home_filled,size: 35,),
                    title: Text('New Minia ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  decoration: BoxDecoration(border: Border(bottom: BorderSide())),
                  child: ListTile(
                    leading:Icon(Icons.date_range,size: 35,)
                    ,
                    title: Text('27/2/2002 ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                    margin: EdgeInsets.all(20),
                    child:MaterialButton(
                      color: Colors.blue,

                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(90)
                      ),
                      padding: EdgeInsets.all(10),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => EditProfile()),
                        );
                      },
                      child: Center( child: Text(" Edit Profile ",style: TextStyle(fontSize: 20,color: Colors.white))),

                    )
                )
              ],
            ),
          ),

        ));


  }}
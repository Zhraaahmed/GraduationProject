import 'package:flutter/material.dart';
import 'package:first_day_flutter/drawer.dart';
class NewTasksScreen extends StatefulWidget {
  const NewTasksScreen({Key? key}) : super(key: key);

  @override
  State<NewTasksScreen> createState() => _NewTasksScreenState();
}

class _NewTasksScreenState extends State<NewTasksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: InkWell(onTap:(){
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NavBar()),
          );

          }  ,
              child: Icon(Icons.menu,size: 35,)),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.notifications,size: 35,),
            ),
          ],
        ),

        body: Container(

        )
    );
  }
}

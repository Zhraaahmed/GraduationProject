import 'package:first_day_flutter/doctorprofile.dart';
import 'package:first_day_flutter/first_admin.dart';
import 'package:first_day_flutter/modules/login/first_page.dart';
import 'package:flutter/material.dart';

import 'First_doc.dart';
import 'modules/login/login_screen.dart';
import 'modules/login/signup_page.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(child: Text('Choose Account Type',style: TextStyle(color:Colors.blue,fontSize: 30.0,fontWeight: FontWeight.bold),)),
            ), SizedBox(height: 50,),
            Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell( onTap:(){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => FirstPage()),
                          );},
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(205),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('Images/pngtre.jpg' )
                              ),
                            ),width: 170,height: 350,),
                        ),  SizedBox(width:12,),
                        InkWell(onTap:(){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => FirstDoc()),
                            );},
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(205),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage('Images/30.jpg' ))
                                ), width: 130,height:350,),
                        ),
                        InkWell(onTap:(){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => FirsAd()),
                            );},
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(205),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage('Images/ad.jpg' ))
                                ), width: 130,height:350,),
                        ),
                      ],
                    ),
                    Row(
                      children: [ SizedBox(width: 50,),
                        Text('User',style: TextStyle(color:Colors.blue,fontSize: 30.0,fontWeight: FontWeight.bold)), SizedBox(width: 80,),
                        Text('Doctor',style: TextStyle(color:Colors.blue,fontSize: 30.0,fontWeight: FontWeight.bold)),SizedBox(width: 40,),
                        Text('Admin',style: TextStyle(color:Colors.blue,fontSize: 30.0,fontWeight: FontWeight.bold)),
                      ],
                    )
                  ],
                ),
              ),),
          ],
        ),
      ),
    );
}
}

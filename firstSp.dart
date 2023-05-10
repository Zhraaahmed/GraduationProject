import 'package:first_day_flutter/logSp.dart';
import 'package:first_day_flutter/signSp.dart';
import 'package:flutter/material.dart';

class firstSp extends StatefulWidget {
  const firstSp({Key? key}) : super(key: key);

  @override
  State<firstSp> createState() => _firstSpState();
}

class _firstSpState extends State<firstSp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsetsDirectional.all(40
                ),
              ),
              Container(
                child: Center(
                  child: Image(image: NetworkImage('https://img.freepik.com/vrije-vector/gezonde-mensen-met-verschillende-pictogrammen_53876-43069.jpg?w=2000'),

                  ),
                ),
              ), SizedBox(height: 30,),
              Text('My Behavior' ,style: TextStyle(color: Colors.blue,fontSize: 30.0,fontWeight: FontWeight.bold),),
              SizedBox(height: 30,),
              Text('Welcome to My Behavior!' ,style: TextStyle(fontSize:20)),  SizedBox(height: 75,),
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)
                ),

                width: double.infinity,
                child: MaterialButton(onPressed:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => signSp()),
                  );
                } ,child: Text('Sign Up',style: TextStyle(color: Colors.white),),),
              ),SizedBox(height: 15,),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                        color: Colors.blue
                    )
                ),

                width: double.infinity,
                child: MaterialButton(onPressed:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => logSp()),
                  );


                } ,child: Text('Sign in',style: TextStyle(color: Colors.blue),),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

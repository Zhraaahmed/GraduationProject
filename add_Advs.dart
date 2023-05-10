import 'dart:io';

import 'package:first_day_flutter/afterAdd.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker/image_picker.dart';
class Adding extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return AddingState ();

  }
}

class  AddingState extends State<Adding> {
  File? imageFile;
  final ImagePicker picker = ImagePicker();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("   Adding Advertisements         ", style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black))),
          backgroundColor: Colors.white10,
        ),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child:Column(children: [
              SizedBox(height: 20),
              Text(" Enter Some Information                                    ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21, color: Colors.blue))
              ,SizedBox(height: 20),

              Text("Type of advertisment                                      ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black))
              ,SizedBox(height: 10),

              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(80),
                        borderSide: BorderSide(width: 2)
                    )
                ),

              ),
              SizedBox(height: 20),

              Text("    Advertisment duration                                                 ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black))
              ,SizedBox(height: 10),

              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(80),
                        borderSide: BorderSide(width: 2)
                    )
                ),

              ),
              SizedBox(height: 20),

              Text("    Who can see the advertisment ?                                               ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black))
              ,SizedBox(height: 10),

              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(80),
                        borderSide: BorderSide(width: 2)
                    )
                ),

              ),
              SizedBox(height: 20),

              Text("    How many times does the ad appear?                                               ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black))
              ,SizedBox(height: 10),

              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(80),
                        borderSide: BorderSide(width: 2)
                    )
                ),

              ),
              SizedBox(height: 20),

              Text("    How long does it appear on the application?                                            ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black))
              ,SizedBox(height: 10),

              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(80),
                        borderSide: BorderSide(width: 2)
                    )
                ),

              ),

              SizedBox(height: 20),
              Text("    In which country is this ad located?                                            ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black))
              ,SizedBox(height: 10),

              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(80),
                        borderSide: BorderSide(width: 2)
                    )
                ),

              ),
              SizedBox(height: 20),
              Text("    Enter the advertisment image                                           ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black))
              ,SizedBox(height: 10),
              if (imageFile != null)
                Container(
                  width: 700,
                  height: 300,
                  alignment: AlignmentDirectional.center,
                  decoration: BoxDecoration(
                    color: Colors.white30,
                    image: DecorationImage(
                      image: FileImage(imageFile!),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(width: 8,color: Colors.black),
                    borderRadius: BorderRadius.circular(12.0),
                  ),)
              else
                Container(
                  width: 600,
                  height: 480,
                  alignment: AlignmentDirectional.center,
                  decoration: BoxDecoration(
                    color: Colors.white30,
                    border: Border.all(width: 8,color: Colors.black26),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Text("Image should appear here",style: TextStyle(fontSize: 29,color: Colors.black,fontWeight: FontWeight.bold),),

                ),

              Row(children: [
                Expanded(child: ElevatedButton(
                  onPressed: ()=>getImage(source: ImageSource.camera),
                  child: Text("Capture Image",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold,),),

                ))
                ,SizedBox(width: 20),
                Expanded(child: ElevatedButton(

                  onPressed: ()=>getImage(source: ImageSource.gallery),
                  child: Text("Select Image",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold,),),

                ))

              ],),


              SizedBox(height: 40),

              Center(
                child: ElevatedButton(
                  child: const Text('Add',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>After_add_ad()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 30),),

                ),
              ),



            ],)
        ));
  }
  void getImage({required ImageSource source}) async{
    final file =  await picker.getImage(
      source: source,
      maxHeight: 300,
      maxWidth: 700,
      imageQuality: 100,


    );
    if(file?.path!=null){
      setState(() {
        imageFile = File(file!.path);
      });

    }
  }
}
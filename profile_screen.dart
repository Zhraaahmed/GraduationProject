import 'package:flutter/material.dart';
import 'package:drop_down_list/drop_down_list.dart';
class ProfileScreen extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return ProfileState();

  }
}

class  ProfileState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
                children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row( children: [
                  CircleAvatar(
                    radius: 25.0,
                    backgroundImage: NetworkImage('https://img.freepik.com/vrije-vector/gezonde-mensen-met-verschillende-pictogrammen_53876-43069.jpg?w=2000'),
                  ),SizedBox(width: 15,),
                  Text("profile",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)

                ],),
              ),
              SizedBox(height: 10,),
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
              /* Container(child: Icon(Icons.edit,color: Colors.white,size:20 ),
                     margin: EdgeInsets.only(left: 100,),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.indigo,
            ),
                      ),*/
              SizedBox(height: 20,),
              Form(

                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("     Full Name",style: TextStyle(color:Colors.grey,),),
                        SizedBox(height: 10,),

                        TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(45),
                                borderSide: BorderSide(width: 20),
                              )),),])),


              Form(
                  child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10,),

                        Text("     Email",style: TextStyle(color: Colors.grey,fontSize:15)),
                        SizedBox(height: 10,),

                        TextFormField(
                          decoration: InputDecoration(

                              suffixIcon: Icon(Icons.email),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(100),
                                  borderSide: BorderSide(width: 3)
                              )
                          ),

                        ),
                        SizedBox(height: 10,),
                        Text("     Gender",style: TextStyle(color: Colors.grey,fontSize:15),),
                        SizedBox(height: 10,),
                        Form(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                    suffixIcon: Icon(Icons.arrow_drop_down),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(90),

                                        borderSide: BorderSide(width: 1)
                                    )
                                ),

                              ),
                              SizedBox(height: 10,),
                              Text("     Date of birth",style: TextStyle(color: Colors.grey,fontSize:15,),),
                              SizedBox(height: 10,),
                              Form(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextFormField(

                                    decoration: InputDecoration(
                                        suffixIcon: Icon(Icons.date_range),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(60),

                                        )
                                    ),

                                  ),
                                  SizedBox(height: 20,),

                                  Container(
                                      margin: EdgeInsets.all(20),
                                      child:MaterialButton(
                                        color: Colors.blue,

                                        shape: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(90)
                                        ),
                                        padding: EdgeInsets.all(10),
                                        onPressed: () {  },
                                        child: Center( child: Text(" confirm ",style: TextStyle(fontSize: 30,color: Colors.white))),

                                      )
                                  )
                                ],),
                              )]))]))]),
          ),
        ));


  }}
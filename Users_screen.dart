import 'package:flutter/material.dart';

import '../../models/user/user_model.dart';

class UsersScreen extends StatelessWidget {
  UsersScreen({Key? key}) : super(key: key);
   List<UserModel>users=[
     UserModel(id: 1,name: 'Al-zhraa Ahmed ',phone: '+201565655'),
     UserModel(id: 2,name: 'Kholod Hussein',phone: '+20156485451'),
     UserModel(id: 3,name: 'Nora Magdy',phone: '+2015156882'),
     UserModel(id: 4,name: 'Nourhan Ahmed',phone: '+2011874854521'),
     UserModel(id: 5,name: 'Dina Abdelrahman',phone: '+2012981659'),
     UserModel(id: 6,name: 'Ayat',phone: '+20121548944156'),];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users'
        ),
      ),
      body:ListView.separated(
          itemBuilder: (context,index)=>buildUserItem(users[index]),
          separatorBuilder: (context,index)=> Container(
            color: Colors.grey[300],
            width: double.infinity,
            height: 1.0,
          ),
          itemCount: users.length),

    );
  }
  Widget buildUserItem(UserModel user)=> Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 25,
          child: Text('${user.id}',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        ),
        SizedBox(width: 20,),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${user.name} ',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
            Text('${user.phone}',style: TextStyle(color: Colors.grey),),
          ],
        )
      ],
    ),
  );
}

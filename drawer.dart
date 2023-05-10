import 'package:first_day_flutter/Account_type.dart';
import 'package:first_day_flutter/UserInfo.dart';
import 'package:first_day_flutter/layout/home_layout.dart';
import 'package:first_day_flutter/modules/login/first_page.dart';
import 'package:first_day_flutter/modules/new_tasks/new_tasks_screen.dart';
import 'package:first_day_flutter/weeklyReport.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Hi,zhraa',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
            accountEmail: Text(
              'azhraa449@gmail.com',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://images.unsplash.com/photo-1554080353-a576cf803bda?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGhvdG98ZW58MHx8MHx8&w=1000&q=80',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://img.freepik.com/vrije-vector/gezonde-mensen-met-verschillende-pictogrammen_53876-43069.jpg?w=2000')),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.data_saver_on),
            title: Text('Add Data'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Info()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.view_week_rounded),
            title: Text('Weekly Report'),
            onTap: (){
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => WeeklyReport()),
          );
          },
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Share'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('RateApp'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.arrow_back),
            title: Text('Back'),
            onTap: () => HomeLayout(),
          ),
          Divider(),
          ListTile(
            title: Text('Exit'),
            leading: InkWell(child: Icon(Icons.exit_to_app)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Account()),
              );
            },
          ),
        ],
      ),
    );
  }
}

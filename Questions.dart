
import 'package:curved_progress_bar/curved_progress_bar.dart';
import 'package:first_day_flutter/Account_type.dart';
import 'package:first_day_flutter/UserInfo.dart';
import 'package:first_day_flutter/comment.dart';
import 'package:first_day_flutter/drawer.dart';
import 'package:first_day_flutter/editprofile.dart';
import 'package:first_day_flutter/modules/done_tasks/done_tasks_screen.dart';
import 'package:first_day_flutter/weeklyReport.dart';
import 'package:flutter/material.dart';

class Questions extends StatefulWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(children: [
            SizedBox(
              height: 40,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              CircleAvatar(
                radius: 25.0,
                backgroundImage: NetworkImage(
                    'https://thevideoink.com/wp-content/uploads/2021/11/wysiwyg-uploads_1569586526901-doctor.jpg'),
              ),
              SizedBox(
                width: 202,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Account()),
                    );
                  },
                  child: Icon(
                    Icons.exit_to_app,
                    size: 36,
                    color: Colors.blue,
                  )),
            ]),
            SizedBox(
              height: 30,
            ),
          Card(
            elevation: 5,
            child: SizedBox(
              width: 650,
              height: 150,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25.0,
                  backgroundImage: NetworkImage(
                      'https://img.freepik.com/free-photo/happy-cheerful-female-customer-posing-camera_74855-2837.jpg'),
                ) ,
                title: Text('MARIM MOHAMED'),
                subtitle: Text('Lack of sleep makes me less productive. I need a good seven or eight hours a night.'),
                trailing: InkWell( onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CommentPage()),
                  );
                },
                    child: Icon(Icons.comment)),
              ),
            ),
          ),
            SizedBox(
              height: 10,
            ),
          Card(
            elevation: 5,
            child: SizedBox(
              width: 600,
              height: 150,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25.0,
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRo0ZXOhtovOxzi1LjylJN86Jeecm5p4YVSh7W7nzN-bS1EAh0zVAGtzGr2Ba_0ZkMZng&usqp=CAU'),
                ) ,
                title: Text('Ahmed Wagdy'),
                subtitle: Text('I suffer from severe work pressure and I cannot organize my day'),
                trailing: InkWell( onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CommentPage()),
                  );
                },child: Icon(Icons.comment)),
              ),
            ),
          ),
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 5,
              child: SizedBox(
                width: 600,
                height: 150,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 25.0,
                    backgroundImage: NetworkImage(
                        'https://modo3.com/thumbs/fit630x300/2489/1530083563/%D9%85%D9%87%D9%86_%D8%AA%D8%A8%D8%AF%D8%B9_%D9%81%D9%8A%D9%87%D8%A7_%D8%A7%D9%84%D9%85%D8%B1%D8%A3%D8%A9.jpg'),
                  ) ,
                  title: Text('Aliaa Zaky'),
                  subtitle: Text('I need some modifications to my daily habits'),
                  trailing: InkWell( onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CommentPage()),
                    );
                  },child: Icon(Icons.comment))
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 5,
              child: SizedBox(
                width: 600,
                height: 150,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 25.0,
                    backgroundImage: NetworkImage(
                        'https://w7.pngwing.com/pngs/808/420/png-transparent-management-business-corporation-company-employee-surveys-business-company-service-people-thumbnail.png'),
                  ) ,
                  title: Text('Mahmoud Khaled'),
                  subtitle: Text('When can I know if my lifestyle is good and beneficial?'),
                  trailing:InkWell( onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CommentPage()),
                    );
                  },child: Icon(Icons.comment))
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 5,
              child: SizedBox(
                width: 600,
                height: 150,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 25.0,
                    backgroundImage: NetworkImage(
                        'https://images.rawpixel.com/image_png_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvczkzLXBhLTU3OThfMS5wbmc.png?s=sbMLk1eiRzQUOrMIRvmZPgG2eK7zXEBeeLefvv7JzDY'),
                  ) ,
                  title: Text('Ali Mady'),
                  subtitle: Text('I wonder how to keep playing sports daily without interruption or laziness'),
                  trailing: InkWell( onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CommentPage()),
                    );
                  },child: Icon(Icons.comment))
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 5,
              child: SizedBox(
                width: 600,
                height: 150,
                child: ListTile(
                  leading:  CircleAvatar(
                    radius: 25.0,
                    backgroundImage: NetworkImage(
                        'https://img.freepik.com/free-photo/cheerful-confident-female-smiling-camera-cross-arms-chest_176420-17284.jpg?w=360'),
                  ) ,
                  title: Text('Tina Wiliam'),
                  subtitle: Text('I think I play enough sports and can organize my time between work and rest, but I need to make sure that I am right'),
                  trailing: InkWell( onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CommentPage()),
                    );
                  },child: Icon(Icons.comment)),
                ),
              ),
            ),



          ],),
        ),
      )
    );
  }
}

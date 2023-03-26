import 'package:first_day_flutter/Questions.dart';
import 'package:flutter/material.dart';

class CommentPage extends StatelessWidget {
  const CommentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
    Padding(
      padding: const EdgeInsets.all(30.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 190,
            ),
            Card(
              elevation: 5,
              child: SizedBox(
                width: 750,
                height: 150,
                child: ListTile(
                  leading:  CircleAvatar(
                    radius: 25.0,
                    backgroundImage: NetworkImage(
                        'https://thevideoink.com/wp-content/uploads/2021/11/wysiwyg-uploads_1569586526901-doctor.jpg'),
                  ),
                  title: Text('Dr. MOHAMED'),
                  subtitle: TextFormField(),

                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                 color: Colors.blue
              ),

              width: double.infinity,
              child: MaterialButton(onPressed:(){
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => Questions()),
                );


              } ,child: Text('Comment',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
            ),
          ],
        ),
      ),
    ),
    );
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_day_flutter/profSp.dart';
import 'package:first_day_flutter/signSp.dart';
import 'package:flutter/material.dart';

class logSp extends StatefulWidget {
  const logSp({Key? key}) : super(key: key);

  @override
  State<logSp> createState() => _logSpState();
}

class _logSpState extends State<logSp> {
  var emailController=TextEditingController();
  var password,UserName,email;
  final auth = FirebaseAuth.instance;
  var passwordController=TextEditingController();
  bool isPassword=true;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsetsDirectional.all(40
                  ),
                ),
                Container(
                  child: Image(image: NetworkImage('https://img.freepik.com/vrije-vector/gezonde-mensen-met-verschillende-pictogrammen_53876-43069.jpg?w=2000'),

                  ),
                ),
                Center(child: Text('My Behavior' ,style: TextStyle(color: Colors.blue,fontSize: 50.0,fontWeight: FontWeight.bold),)),
                SizedBox(height: 20,),
                Center(child: Text('Sign in to your account' ,style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),)),
                SizedBox(height: 20,),
                Text('Email',style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                TextFormField(
                  autovalidateMode:
                  AutovalidateMode.onUserInteraction,
                  controller: emailController,
                  onFieldSubmitted: (value){
                    email=value;
                    print(value);
                  },onChanged: (value){
                  print(value);
                },
                  validator: (String? value) {
                    if (value!.isEmpty)
                      return "E-mail must be not empty";
                    else if (value.length <= 5) {
                      return "E-mail must be not be less than 7 characters";
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: 'Email Address',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email)
                  ),
                ),
                SizedBox(height: 20,),
                Text('Password',style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    onFieldSubmitted: (value){
                      password=value;
                      print(value);
                    },onChanged: (value){
                  print(value);
                },
                    validator: (String? value) {
                      if (value!.isEmpty)
                        return "Password must be not empty";
                      else if (value.length <= 5) {
                        return "Password must be not be less than 7 characters";
                      }
                    },
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconData!=null?IconButton(onPressed: (){
                        setState(() {
                          isPassword=!isPassword;
                        });
                      }, icon: Icon(Icons.remove_red_eye)):null,

                    )
                ), SizedBox(height: 20,),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Icon(Icons.check_box_outline_blank,color: Colors.blue,),
                    SizedBox(width: 5,),
                    Text('Remember me')
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)
                  ),

                  width: double.infinity,
                  child: MaterialButton(onPressed:()async{
                    if (_formKey.currentState!.validate()) {
                      UserCredential currentUser =
                      await auth.signInWithEmailAndPassword(
                          email: emailController.text,
                          password: passwordController.text);
                      print(currentUser.user);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => profSp()),
                      );

                    }} ,child: Text('Sign in',style: TextStyle(color: Colors.white),),),
                ),

                SizedBox(height: 15,),
                Container(alignment: Alignment.center,
                    child: Text('Forget the Password?',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)), SizedBox(height: 10,),
                Container(alignment: Alignment.center,
                    child: Text('or continue with',style: TextStyle(color: Colors.black),)), SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 15,),
                    CircleAvatar(
                      radius: 20.0,
                      backgroundImage: NetworkImage('https://www.facebook.com/images/fb_icon_325x325.png'),
                    ), SizedBox(width: 10,),
                    Text('Facebook',style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(width: 72,),
                    CircleAvatar(
                      radius: 25.0,
                      backgroundImage: NetworkImage('https://play-lh.googleusercontent.com/6UgEjh8Xuts4nwdWzTnWH8QtLuHqRMUB7dp24JYVE2xcYzq4HA8hFfcAbU-R-PC_9uA1'),
                    ),SizedBox(width: 5,),
                    Text('Google',style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                )

                , SizedBox(height: 5,),
                Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                  Text('Don\'t Have an account?'),
                  Container(alignment: Alignment.center,
                      child: TextButton(onPressed:(){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => signSp()),
                        );
                      }
                          , child: Text('Sign Up'))),
                ],
                ),

              ],
            ),
          ),
        ),

      ),
    );
  }
}

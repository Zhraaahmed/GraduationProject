import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:first_day_flutter/sign_doc.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'doctorprofile.dart';

class LoginDoc extends StatefulWidget {
  LoginDoc({Key? key}) : super(key: key);

  @override
  State<LoginDoc> createState() => _LoginDocState();
}

class _LoginDocState extends State<LoginDoc> {
  getData() async {
    CollectionReference usersref =
        FirebaseFirestore.instance.collection("users");
    await usersref.get().then((value) {});
    QuerySnapshot querysnapshot = await usersref.get();
    List<QueryDocumentSnapshot> listdocs = querysnapshot.docs;
    listdocs.forEach((element) {
      print(element.data());
      print("===========================");
    });
  }

  var emailController = TextEditingController();
  var password, UserName, email;
  var passwordController = TextEditingController();
  bool isPassword = true;
  final auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsetsDirectional.all(40),
                ),
                Container(
                  child: Image(
                    image: NetworkImage(
                        'https://img.freepik.com/vrije-vector/gezonde-mensen-met-verschillende-pictogrammen_53876-43069.jpg?w=2000'),
                  ),
                ),
                Center(
                    child: Text(
                  'My Behavior',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold),
                )),
                SizedBox(
                  height: 20,
                ),
                Center(
                    child: Text(
                  'Sign in to your account',
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                )),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Email',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: emailController,
                  onFieldSubmitted: (value) {
                    email = value;
                    print(value);
                  },
                  onChanged: (value) {
                    print(value);
                  },
                  validator: (String? value) {
                    if (value!.isEmpty)
                      return "Email must be not empty";
                    else if (value.length <= 5) {
                      return "Email must be not be less than 19 characters";
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: 'Email Address',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email)),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Password',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    onFieldSubmitted: (value) {
                      password = value;
                      print(value);
                    },
                    onChanged: (value) {
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
                      suffixIcon: IconData != null
                          ? IconButton(
                              onPressed: () {
                                setState(() {
                                  isPassword = !isPassword;
                                });
                              },
                              icon: Icon(Icons.remove_red_eye))
                          : null,
                    )),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.check_box_outline_blank,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text('Remember me')
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        UserCredential currentUser =
                            await auth.signInWithEmailAndPassword(
                                email: emailController.text,
                                password: passwordController.text);
                        print(currentUser.user);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DocProf()),
                        );
                      }
                    },
                    child: Text(
                      'Sign in',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Forget the Password?',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    alignment: Alignment.center,
                    child: Text(
                      'or continue with',
                      style: TextStyle(color: Colors.black),
                    )),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                      radius: 20.0,
                      backgroundImage: NetworkImage(
                          'https://www.facebook.com/images/fb_icon_325x325.png'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Facebook',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 72,
                    ),
                    CircleAvatar(
                      radius: 25.0,
                      backgroundImage: NetworkImage(
                          'https://play-lh.googleusercontent.com/6UgEjh8Xuts4nwdWzTnWH8QtLuHqRMUB7dp24JYVE2xcYzq4HA8hFfcAbU-R-PC_9uA1'),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Google',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t Have an account?'),
                    Container(
                        alignment: Alignment.center,
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignDoc()),
                              );
                            },
                            child: Text('Sign Up'))),
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

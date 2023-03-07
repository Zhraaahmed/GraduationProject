import 'package:first_day_flutter/layout/home_layout.dart';
import 'package:first_day_flutter/modules/counter/Counter_screen.dart';
import 'package:first_day_flutter/modules/login/first_page.dart';
import 'package:first_day_flutter/modules/users/Users_screen.dart';
import 'package:first_day_flutter/modules/bmi_result/bmi_result_screen.dart';
import'package:first_day_flutter/modules/bmi/bmi_screen.dart';
import 'package:first_day_flutter/modules/home/home_screen.dart';
import 'package:first_day_flutter/modules/login/login_screen.dart';
import 'package:first_day_flutter/modules/messenger/messenger_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:FirstPage(),
    );

  }
}


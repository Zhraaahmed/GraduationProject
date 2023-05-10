import 'package:first_day_flutter/Account_type.dart';
import 'package:first_day_flutter/layout/home_layout.dart';
import 'package:first_day_flutter/modules/counter/Counter_screen.dart';
import 'package:first_day_flutter/modules/login/first_page.dart';
import 'package:first_day_flutter/modules/users/Users_screen.dart';
import 'package:first_day_flutter/modules/bmi_result/bmi_result_screen.dart';
import'package:first_day_flutter/modules/bmi/bmi_screen.dart';
import 'package:first_day_flutter/modules/home/home_screen.dart';
import 'package:first_day_flutter/modules/login/login_screen.dart';
import 'package:first_day_flutter/modules/messenger/messenger_screen.dart';
import 'package:first_day_flutter/weeklyReport.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:provider/provider.dart';
import 'package:first_day_flutter/data_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'pat.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ChangeNotifierProvider(
      create: (context) => DataProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Account(),
      routes: {
        "pat":(context) =>WeeklyReport(),
      },
    );


  }
}


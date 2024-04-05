import 'package:flutter/material.dart';
import 'package:ui/account.dart';
import 'package:ui/add-home.dart';
import 'package:ui/add.dart';
import 'package:ui/auction.dart';
import 'package:ui/auction1.dart';
import 'package:ui/auction2.dart';

import 'package:ui/edit_address.dart';
import 'package:ui/edit_occupation.dart';
import 'package:ui/feedback.dart';
import 'package:ui/home.dart';

import 'package:ui/homepage.dart';
import 'package:ui/my_profile.dart';
import 'package:ui/notification.dart';

import 'package:ui/register.dart';
import 'package:ui/search.dart';
import 'package:ui/search_antique.dart';
import 'package:ui/service.dart';
import 'package:ui/welcome.dart';
import 'package:ui/winner.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
      )),
      home: Welcome(),
    );
  }
}

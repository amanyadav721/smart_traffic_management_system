import 'dart:math';

import 'package:flutter/material.dart';
import 'package:smart_traffic_management_system/pages/home_page.dart';
import 'package:smart_traffic_management_system/pages/login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_traffic_management_system/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home:home_page(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
          fontFamily: GoogleFonts.gideonRoman().fontFamily,
          primarySwatch: Colors.teal),
      darkTheme: ThemeData(
        brightness: Brightness.light,
        // primarySwatch: Colors.teal
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => login(),
        MyRoutes.loginroute: (context) => login(),
        MyRoutes.homeroute: (context) => home_page(),
      },
    );
  }
}

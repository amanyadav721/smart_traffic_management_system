import 'package:flutter/material.dart';
import 'package:smart_traffic_management_system/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      home:home_page(),
    );
  }
}

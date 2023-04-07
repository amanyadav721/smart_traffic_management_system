import 'package:flutter/material.dart';

class home_page extends StatelessWidget {
  const home_page({super.key});

  @override
  Widget build(BuildContext context) {
    int sem = 6;
    String team = "Aman, Rishi, Satyam, Sushant";
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Smart Traffic System")),
      ),
      body: Center(
        child: Container(
          child: Text("Smart Traffic Management System sem $sem by $team"),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromRGBO(23, 34, 45, 22.0),
      ),
    );
  }
}

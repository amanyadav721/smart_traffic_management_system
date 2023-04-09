import 'package:flutter/material.dart';


class home_page extends StatelessWidget {
  const home_page({super.key});

  @override
  Widget build(BuildContext context) {
    int sem = 6;
    String team = " ";
    return Scaffold(
      
      appBar: AppBar(
        title: Center(child: Text("Smart Traffic System",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        
        )
        
        ),
      ),
      body: Center(
        child: Container(
          child: Text("Details"),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromRGBO(23, 34, 45, 22.0),
      ),

      
    );
  }
}



//

import 'package:flutter/material.dart';
import 'package:smart_traffic_management_system/utils/routes.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  String name = "";
  bool changebutton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login3d.png",
              fit: BoxFit.fitWidth,
              height: 300,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Smart Traffic System $name",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username ",
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        changebutton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeroute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: (1)),
                      width: changebutton ? 50 : 150,
                      height: 50,
                      alignment: Alignment.center,
                      child: changebutton
                          ? Icon(Icons.done, color: Colors.white)
                          : Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius:
                            BorderRadius.circular(changebutton ? 50 : 8),
                      ),
                    ),
                  ),

                  // ElevatedButton(
                  //   child: Text(
                  //     "LogIn",
                  //     style: TextStyle(
                  //       fontSize: 20,
                  //       fontWeight: FontWeight.bold,
                  //       color: Colors.white,
                  //     ),
                  //   ),
                  //   style: TextButton.styleFrom(minimumSize: Size(100, 50)),
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.homeroute);
                  //   },
                  // ),
                  SizedBox(
                    height: 12,
                  ),
                  Text("Forgot password",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

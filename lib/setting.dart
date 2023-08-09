// TODO Implement this library.
import 'dart:html';

import 'package:flutter/material.dart';

import 'General.dart';

// void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _SettingState createState() => _SettingState();
}

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

bool boolicon = false;
// IconData iconlight = Icons.wb_sunny;
// IconData icondeark = Icons.nights_stay;
ThemeData iconlight = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.white,
);
ThemeData icondark =
    ThemeData(brightness: Brightness.dark, primaryColor: Colors.black);

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: boolicon ? icondark : iconlight,
        home: Scaffold(
          backgroundColor: const Color(0xffd5ebf6),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        "Settings",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      SizedBox(
                        width: 20,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "logout",
                            style: TextStyle(
                                color: Color(0xff315e84), fontSize: 22),
                          )),

                      Switch(
                        value: boolicon,
                        onChanged: (newvalue) {
                          setState(() {
                            boolicon = newvalue;
                          });
                        },
                      ),

                      // const Spacer(),
                      // const Icon(
                      //   Icons.settings,
                      //   color: Colors.grey,
                      //   size: 50,
                      // ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.all(20),
                    padding: const EdgeInsets.all(20),
                    height: 300,
                    width: 280,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(children: [
                      const Padding(padding: EdgeInsets.all(12)),
                      const Text(
                        "Account and Security",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.update_rounded,
                            color: Colors.black,
                            size: 30,
                          ),
                          Text(
                            "  Update data",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.blue,
                            size: 20,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),

                      //2second

                      Row(
                        children: const [
                          Icon(
                            Icons.manage_accounts,
                            color: Colors.black,
                            size: 30,
                          ),
                          Text(
                            "  manage benefeciary",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.blue,
                            size: 20,
                          )
                        ],
                      ),

                      const SizedBox(
                        height: 15,
                      ),

                      //third3
                      Row(
                        children: [
                          const Icon(
                            Icons.lock_rounded,
                            color: Colors.black,
                            size: 30,
                          ),
                          const Text(
                            "  Change Password",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.blue,
                            size: 20,
                          )
                        ],
                      ),

                      const SizedBox(
                        height: 15,
                      ),
                      //4fourth
                      Row(
                        children: [
                          const Icon(
                            Icons.password_outlined,
                            color: Colors.black,
                            size: 30,
                          ),
                          const Text(
                            "  Change Password",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.blue,
                            size: 20,
                          )
                        ],
                      ),
                    ]),
                  ),
                  General(),
                ],
              ),
            ),
          ),
        ));
  }
}

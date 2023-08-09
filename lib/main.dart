import 'package:flutter/material.dart';

import 'package:lablysis/views/spalshscreen.dart';
import 'setting.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

// ignore: unused_element
// bool boolicon = false;
// IconData iconlight = Icons.wb_sunny;
// IconData icondark = Icons.nights_stay;

// ThemeData lighttheme =
//     ThemeData(primarySwatch: Colors.amber, brightness: Brightness.light);
// ThemeData darktheme = ThemeData(
//   primarySwatch: Colors.red,
//   brightness: Brightness.dark,
// );

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        // theme: boolicon ? icondark : iconlight ,
        // A widget which will be started on application startup
        home: Splashscreen());
  }
}

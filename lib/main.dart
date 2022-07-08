import 'package:flutter/material.dart';

import 'DropdownListDemo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          brightness: Brightness.light
      ),

      darkTheme: ThemeData(
          brightness: Brightness.dark
      ),

      themeMode: ThemeMode.dark,
      home: const DropdownListDemo(),
    );
  }
}
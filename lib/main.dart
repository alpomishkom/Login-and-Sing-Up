import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_singup/pages/login_up/login_up.dart';
import 'package:login_singup/pages/singup_pages/singup_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SingUpPages1(),
    );
  }
}

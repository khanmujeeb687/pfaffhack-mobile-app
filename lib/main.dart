import 'package:flutter/material.dart';
import 'package:pfaffhack/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pfaff Hack',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(title: 'Pfaff Hack'),
    );
  }
}

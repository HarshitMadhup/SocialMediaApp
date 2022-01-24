import 'package:flutter/material.dart';
import 'package:socialapp/screens/auth/signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Social App',
      theme: ThemeData(),
      home: SignUp(),
    );
  }
}

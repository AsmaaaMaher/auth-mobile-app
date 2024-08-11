import 'package:auth/pages/login.dart';
import 'package:auth/pages/Profile.dart';
import 'package:auth/pages/signup.dart';
import 'package:auth/pages/welcome.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
initialRoute: "/",
      routes: {
        '/': (context) => const Welcome(),
        '/signup': (context) => const Signup(),
        '/login': (context) => const Login(),
        '/Profile': (context) => const Profile(),
  },
  
  
    );
  }
}
import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Logger',
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }

}
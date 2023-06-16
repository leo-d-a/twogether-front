import 'package:flutter/material.dart';
import './app/pages/home_page.dart';
import './app/pages/sign_up_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twogether',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context) => SignUpPage(),
      },
    );
  }
}

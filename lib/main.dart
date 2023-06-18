import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import './app/pages/home_page.dart';
import './app/pages/sign_up_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Twogether',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
        routes: <String, WidgetBuilder>{
          '/signup': (BuildContext context) => const SignUpPage(),
        },
      );
}

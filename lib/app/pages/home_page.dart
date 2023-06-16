import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/signup');
      },
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Remplace par ton logo
              const FlutterLogo(size: 100),
              const SizedBox(height: 20),
              Text('Twogether',
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: 10),
              Text('Comptez ensemble',
                  style: Theme.of(context).textTheme.titleLarge),
            ],
          ),
        ),
      ),
    );
  }
}

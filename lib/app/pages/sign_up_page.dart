import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inscription"),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration:
                  const InputDecoration(labelText: 'Nom d\'utilisateur'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Veuillez entrer un nom d\'utilisateur';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'E-mail'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Veuillez entrer un e-mail';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Mot de passe'),
              obscureText: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Veuillez entrer un mot de passe';
                }
                return null;
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // TODO: Inscrire l'utilisateur avec Firebase
                }
              },
              child: const Text('Inscription'),
            ),
          ],
        ),
      ),
    );
  }
}

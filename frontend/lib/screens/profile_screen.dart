import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Perfil')),
      body: Center(
        child: Text(
          'Información del Usuario',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

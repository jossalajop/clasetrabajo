import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Text('Ir al Login'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/registro');
              },
              child: Text('Ir al registro'),
            ),
              ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Inicio'),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
          height: 80.0,
          width: 80.0,
          child: FloatingActionButton(
            child: Text('Empezar'),
            onPressed: () {
              Navigator.pushNamed(context, 'select');
            },
          )),
    );
  }
}

import 'package:alpameditate/src/pages/home_page.dart';
import 'package:alpameditate/src/routes/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AlpaMeditate',
      initialRoute: '/',
      routes: getApplicationRoutes(),
    );
  }
}

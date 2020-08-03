import 'package:alpameditate/src/pages/home_page.dart';
import 'package:alpameditate/src/pages/medid_page.dart';
import 'package:alpameditate/src/pages/select_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'select': (BuildContext context) => SelectPage(),
    'meditate': (BuildContext context) => MeditatePage(),
  };
}

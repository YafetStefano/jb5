import 'package:navigasi/pages/home_page.dart';
import 'package:navigasi/pages/item_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(initialRoute: '/', routes: {
    '/': (context) => HomePage(),
    '/item': (context) => ItemPage(),
  }));
}
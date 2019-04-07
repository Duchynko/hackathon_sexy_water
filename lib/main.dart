import 'package:flutter/material.dart';
import 'index.dart';
import 'package:sexy_flutter/pages/dashboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sexy water',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Dashboard(),
      // debugShowCheckedModeBanner: false,
    );
  }
}
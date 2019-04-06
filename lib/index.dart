import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sexy_flutter/pages/pager.dart';

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: <Widget>[
          SolutionPager()
        ],
      )
    );
  }
}

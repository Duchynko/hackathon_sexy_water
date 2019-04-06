import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'model/solution.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      //   title: Text(widget.title),
      // ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            elevation: 25.0,
            child: Container(
              padding: EdgeInsets.all(15.0),
              height: MediaQuery.of(context).size.height - 200,
              width: MediaQuery.of(context).size.width - 100,
              child: Container(
                margin: EdgeInsets.only(top: 30.0, bottom: 30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SvgPicture.asset(
                      "assets/images/washing-machine.svg",
                      width: 80.0,
                      height: 80.0,
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Washing Machine",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Qwigley'
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15.0),
                            child: Text(
                              "Use washing machine outside of peek hours",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17.0,
                                fontFamily: 'Dosis',
                                fontWeight: FontWeight.w400
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blueAccent
                          ),
                          width: 70,
                          height: 1.0,
                        ),
                        Container(
                          child: OutlineButton(
                            borderSide: BorderSide(color: Colors.blueAccent),
                            onPressed: () => null,
                            shape: StadiumBorder(),
                            child: SizedBox(
                              width: 60.0,
                              height: 45.0,
                              child: Center(
                                child: Text(
                                  "Info",
                                  style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w400
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blueAccent
                          ),
                          width: 70,
                          height: 1.0,
                        ),
                      ],
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              SvgPicture.asset(
                                "assets/images/co2.svg",
                                width: 30.0,
                                height: 30.0,
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 8.0),
                                child: Text("1.24kg"),
                              )
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              SvgPicture.asset(
                                "assets/images/water.svg",
                                width: 30.0,
                                height: 30.0,
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 8.0),
                                child: Text("21.5l"),
                              )
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              SvgPicture.asset(
                                "assets/images/energy.svg",
                                width: 30.0,
                                height: 30.0,
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 8.0),
                                child: Text("5.5W"),
                              )
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              SvgPicture.asset(
                                "assets/images/money.svg",
                                width: 30.0,
                                height: 30.0,
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 8.0),
                                child: Text("251€"),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sexy_flutter/model/solution.dart';
import 'package:sexy_flutter/widgets/message_bubble.dart';

class SolutionDetailsDialog extends StatefulWidget {
  const SolutionDetailsDialog(this.solution, this.cardColor);

  final LinearGradient cardColor;
  final Solution solution;

  @override
  SolutionDetailsDialogState createState() => new SolutionDetailsDialogState();
}

class SolutionDetailsDialogState extends State<SolutionDetailsDialog> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(right: 8.0, left: 8.0, bottom: 8.0),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, bottom: 24.0),
                  child: Text(
                    widget.solution.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.blue,
                        fontSize: 60.0,
                        fontFamily: 'Qwigley',
                        fontWeight: FontWeight.w800,
                        letterSpacing: 2.0
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 34.0, left: 34.0),
                  child: Text(
                    widget.solution.fullDescription,
                    style: TextStyle(
                        fontSize: 18.0,
                        wordSpacing: 1.2,
                        height: 1.0,
                    ),
                  ),
                )
              ],
            ),
          ),
          Row(children: <Widget>[
            Image.asset("assets/images/lulu.gif", width: 50.0),
            Bubble("Try to wash your clothes tonight at 10:30pm", Colors.blue),
          ]),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(children: <Widget>[
                  Text("Peek hours",
                    style: TextStyle(
                      fontSize: 16.0
                    )
                  ),
                  Card(
                    elevation: 2.0,
                    color: Colors.white,
                    child: Container(
                      child: Table(
                        border: TableBorder(
                          horizontalInside:
                              BorderSide(color: Colors.black45, width: 0.2),
                        ),
                        columnWidths: Map.from({
                          0: FixedColumnWidth(50.0),
                          1: FixedColumnWidth(100.0),
                        }),
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
                        children: <TableRow>[
                          TableRow(children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(10.0),
                              child: SvgPicture.asset(
                                "assets/images/water.svg",
                                width: 20.0,
                                height: 20.0,
                              ),
                            ),
                            Text(widget.solution.water.toString() + "L")
                          ]),
                          TableRow(children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(10.0),
                              child: SvgPicture.asset(
                                "assets/images/water.svg",
                                width: 20.0,
                                height: 20.0,
                              ),
                            ),
                            Text(widget.solution.water.toString() + "L")
                          ]),
                          TableRow(children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(10.0),
                              child: SvgPicture.asset(
                                "assets/images/water.svg",
                                width: 20.0,
                                height: 20.0,
                              ),
                            ),
                            Text(widget.solution.water.toString() + "L")
                          ]),
                          TableRow(children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(10.0),
                              child: SvgPicture.asset(
                                "assets/images/water.svg",
                                width: 20.0,
                                height: 20.0,
                              ),
                            ),
                            Text(widget.solution.water.toString() + "L")
                          ])
                        ],
                      ),
                    ),
                  ),
                ]),
                Column(
                  children: <Widget>[
                    Text(
                      "Off-peek hours",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      elevation: 2.0,
                      child: Container(
                        child: Table(
                          border: TableBorder(
                            horizontalInside:
                                BorderSide(color: Colors.black54, width: 0.2),
                          ),
                          columnWidths: Map.from({
                            0: FixedColumnWidth(50.0),
                            1: FixedColumnWidth(100.0),
                          }),
                          defaultVerticalAlignment:
                              TableCellVerticalAlignment.middle,
                          children: <TableRow>[
                            TableRow(children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10.0),
                                child: SvgPicture.asset(
                                  "assets/images/water.svg",
                                  width: 20.0,
                                  height: 20.0,
                                ),
                              ),
                              Text(widget.solution.water.toString() + "L")
                            ]),
                            TableRow(children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10.0),
                                child: SvgPicture.asset(
                                  "assets/images/water.svg",
                                  width: 20.0,
                                  height: 20.0,
                                ),
                              ),
                              Text(widget.solution.water.toString() + "L")
                            ]),
                            TableRow(children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10.0),
                                child: SvgPicture.asset(
                                  "assets/images/water.svg",
                                  width: 20.0,
                                  height: 20.0,
                                ),
                              ),
                              Text(widget.solution.water.toString() + "L")
                            ]),
                            TableRow(children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10.0),
                                child: SvgPicture.asset(
                                  "assets/images/water.svg",
                                  width: 20.0,
                                  height: 20.0,
                                ),
                              ),
                              Text(widget.solution.water.toString() + "L")
                            ])
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
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
    );
  }
}

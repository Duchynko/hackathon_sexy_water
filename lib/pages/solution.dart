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
      color: Colors.grey.shade100,
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
                        letterSpacing: 3.0
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.only(left: 34.0, right: 34.0, bottom: 10.0),
                  elevation: 5.0,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      widget.solution.fullDescription,
                      style: TextStyle(
                        fontFamily: 'Dosis',
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                        wordSpacing: 1.0,
                        height: 1.0,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Row(children: <Widget>[
            Image.asset("assets/images/lulu.gif", width: 50.0),
            Bubble(widget.solution.message, Colors.blue),
          ]),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(children: <Widget>[
                  Text(
                    widget.solution.firstTable,
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
                                "assets/images/co2.svg",
                                width: 20.0,
                                height: 20.0,
                              ),
                            ),
                            Text(widget.solution.secondCo2.toString() + "kg")
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
                            Text(widget.solution.secondWater.toString() + "l")
                          ]),
                          TableRow(children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(10.0),
                              child: SvgPicture.asset(
                                "assets/images/energy.svg",
                                width: 20.0,
                                height: 20.0,
                              ),
                            ),
                            Text(widget.solution.secondEnergy.toString() + "kWh")
                          ]),
                          TableRow(children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(10.0),
                              child: SvgPicture.asset(
                                "assets/images/money.svg",
                                width: 20.0,
                                height: 20.0,
                              ),
                            ),
                            Text(widget.solution.secondMoney.toString() + "dkk")
                          ])
                        ],
                      ),
                    ),
                  ),
                ]),
                Column(
                  children: <Widget>[
                    Text(
                      widget.solution.secondTable,
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
                                  "assets/images/co2.svg",
                                  width: 20.0,
                                  height: 20.0,
                                ),
                              ),
                              Text(widget.solution.co2.toString() + "g")
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
                              Text(widget.solution.water.toString() + "l")
                            ]),
                            TableRow(children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10.0),
                                child: SvgPicture.asset(
                                  "assets/images/energy.svg",
                                  width: 20.0,
                                  height: 20.0,
                                ),
                              ),
                              Text(widget.solution.energy.toString() + "kWh")
                            ]),
                            TableRow(children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10.0),
                                child: SvgPicture.asset(
                                  "assets/images/money.svg",
                                  width: 20.0,
                                  height: 20.0,
                                ),
                              ),
                              Text(widget.solution.money.toString() + "dkk")
                            ])
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ]
            ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sexy_flutter/pages/solution.dart';
import '../model/solution.dart';

class ItemCard extends StatefulWidget {
  const ItemCard({this.solution, this.cardColor, this.increment, this.decrement});

  final LinearGradient cardColor;
  final Solution solution;
  final VoidCallback increment;
  final VoidCallback decrement;

  @override
  _ItemCardState createState() => new _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {

  @override
  Widget build(BuildContext context) {
    return Center(
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
                      widget.solution.image,
                      width: 80.0,
                      height: 80.0,
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Text(
                            widget.solution.name,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Qwigley',
                              letterSpacing: 3.0
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15.0),
                            child: Text(
                              widget.solution.description,
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
                            color: widget.cardColor.colors[0]
                          ),
                          width: 50,
                          height: 1.0,
                        ),
                        Container(
                          child: OutlineButton(
                            borderSide: BorderSide(color: widget.cardColor.colors[0]),
                            onPressed: () => {
                              Navigator.of(context).push(new MaterialPageRoute<Null>(
                                  builder: (BuildContext context) {
                                    return new SolutionDetailsDialog(widget.solution, widget.cardColor);
                                  },
                                fullscreenDialog: true
                              ))
                            },
                            shape: StadiumBorder(),
                            child: SizedBox(
                              width: 90.0,
                              height: 45.0,
                              child: Center(
                                child: Text(
                                  "Read more",
                                  style: TextStyle(
                                    color: widget.cardColor.colors[0],
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
                            color: widget.cardColor.colors[0]
                          ),
                          width: 50,
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
                                child: Text((widget.solution.co2 - widget.solution.secondCo2).toString() + "kg"),
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
                                child: Text((widget.solution.water - widget.solution.secondWater).toString() + "l"),
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
                                child: Text((widget.solution.energy - widget.solution.secondEnergy).toString() + "kWh"),
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
                                child: Text((widget.solution.money - widget.solution.secondMoney).toString() + "dkk"),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Text("per year",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Qwigley',
                        letterSpacing: 3.0
                      ))
                  ],
                ),
              ),
            ),
          ),
        ),
      );
  }

}
